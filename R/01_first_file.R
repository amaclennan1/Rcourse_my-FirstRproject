install.packages("usethis")
install.packages("gitcreds")
install.packages("tidyverse")
install.packages("medicaldata")
install.packages("here")
install.packages("readr")
library(readr)
library(here)
library("tidyverse")

data <-read.csv(here("data","raw", "insurance_with_date.csv"))

data$sex<-factor(data$sex)
data$region<-factor((data$region))
sex <- c("Male", "Female", "Male", "Female", "Male")
region <- c("North", "South", "East", "West", "North")
data <- data.frame(sex, region)
table_data <- table(data)
barplot(table_data, beside = TRUE, legend = TRUE, main = "Distribution of Region by Sex", 
        xlab = "Sex", ylab = "Count", col = c("lightblue", "lightgreen"))
legend("topright", legend = rownames(table_data), fill = c("lightblue", "lightgreen"))

data <- data.frame(sex, region)
cont_table <- table(data)
mosaicplot(cont_table, main = "Association between Sex and Region", color = TRUE)
data<- data%>%
mutate(smokes = smoker == "yes")
install.packages("unibeCols", repos = "https://ctu-bern.r-universe.dev")
library(unibeCols)
library("ggplot2")
library(dplyr)
library(lubridate)
library(readr)

covid <- read_csv("data/raw/COVID19Cases_geoRegion.csv")
ebola <- read_csv("data/raw/ebola.csv")
library("ggplot2")

ebola2 <- ebola %>% filter(Date<as.Date("2015-03-31"))

library(ggplot2)
plot_ebola_point_v0 <- ggplot(data = data_ebola_cum_cases, 
                              mapping = aes(x = date, y = cum_conf_cases)) + 
  geom_point()
ebola2<-ebola%>%
filter(Country %in% c("Senegal", "Sierra Leone", "Nigeria"))

ggplot(ebola2, aes(x = Date, y = Cum_conf_cases, color = Country)) +
  geom_point(size = 3, alpha = 0.7) +
  labs(title = "Cumulative Confirmed Cases by Country",
       x = "Date",
       y = "Cumulative Confirmed Cases") +
  theme_minimal()

ebola2<-ebola%>%
  filter(Country %in% c("Senegal", "Sierra Leone", "Nigeria"))
plot_ebola2_col_v0<-ggplot(data=ebola2, 
                           mapping = aes(x = Date, y = Cum_conf_cases, fill=Country)) +
geom_col(position = "stack")

plot_ebola2_col_v0
