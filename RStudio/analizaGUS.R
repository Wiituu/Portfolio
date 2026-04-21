# ANALIZA DANYCH GUS – BANK DANYCH LOKALNYCH (BDL)
# Temat: Lekarze a łóżka w szpitalach ogólnych
# Zakres: województwa, lata 2010–2024
# Dane: CSV z BDL

# 1. Instalacja i wczytanie pakietów
install.packages(c("readr", "dplyr", "tidyr", "ggplot2", "stringr"))

library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)
library(stringr)

lekarze_raw <- read_csv2("lekarze_P3173_2010_2024.csv")
lozka_raw   <- read_csv2("lozka_P2454_2010_2024.csv")

lekarze_long <- lekarze_raw %>%
  select(-Kod, -starts_with("...")) %>%
  pivot_longer(
    cols = -Nazwa,
    names_to = "rok_txt",
    values_to = "lekarze_10tys"
  ) %>%
  mutate(
    rok = as.integer(str_extract(rok_txt, "\\d{4}")),
    lekarze_10tys = as.numeric(lekarze_10tys)
  ) %>%
  filter(!is.na(rok), rok >= 2010, rok <= 2024) %>%
  select(Nazwa, rok, lekarze_10tys)

lozka_long <- lozka_raw %>%
  select(-Kod, -starts_with("...")) %>%
  pivot_longer(
    cols = -Nazwa,
    names_to = "rok_txt",
    values_to = "lozka_ogolne"
  ) %>%
  mutate(
    rok = as.integer(str_extract(rok_txt, "\\d{4}")),
    lozka_ogolne = as.numeric(lozka_ogolne)
  ) %>%
  filter(!is.na(rok), rok >= 2010, rok <= 2024) %>%
  select(Nazwa, rok, lozka_ogolne)

dane <- left_join(
  lekarze_long,
  lozka_long,
  by = c("Nazwa", "rok")
)

summary(dane)

shapiro_lekarze <- shapiro.test(dane$lekarze_10tys)
shapiro_lozka   <- shapiro.test(dane$lozka_ogolne)

shapiro_lekarze
shapiro_lozka

qqnorm(dane$lekarze_10tys)
qqline(dane$lekarze_10tys)

qqnorm(dane$lozka_ogolne)
qqline(dane$lozka_ogolne)



ggplot(dane, aes(x = lekarze_10tys, y = lozka_ogolne)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "Zależność między liczbą lekarzy a liczbą łóżek\nw szpitalach ogólnych (2010–2024)",
    x = "Lekarze na 10 tys. ludności",
    y = "Łóżka w szpitalach ogólnych"
  ) +
  theme_minimal()


cor_test <- cor.test(
  dane$lekarze_10tys,
  dane$lozka_ogolne,
  use = "complete.obs"
)
cor_test

model <- lm(lozka_ogolne ~ lekarze_10tys, data = dane)
summary(model)
