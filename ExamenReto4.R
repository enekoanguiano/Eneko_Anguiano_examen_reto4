library(digest)
library(discretization)
library(dplyr)
library(EnvStats)
library(fastDummies)
library(naniar)
library(nortest)
library(readxl)
library(smoothmest)
library(VIM)
library(plumber)
library(dplyr)
library(nortest)


datos <- read.csv("C:/Users/nenek/Downloads/netflix.csv")

summary(datos$Minutes)
summary(datos$Seasons)

length(unique(datos$type))
length(unique(datos$country))
length(unique(datos$director))

miss_var_summary(datos)
vis_miss(datos)

datos[is.na(datos)] <- 0

