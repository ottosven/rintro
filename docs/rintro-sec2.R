
install.packages("xts")



library(xts)
myts = ts(c(66, 76, 55, 12, 4, 66, 8, 99), start = 2020, frequency = 4)
as.xts(myts)  # convert a ts object into an xts object
# we may assign irregular time points:
dates = seq.Date(as.Date("2023-01-01"), by = 7, length.out = 7)
dates[8] = as.Date("2023-03-01")
my.xts = xts(myts, dates)
plot(my.xts)



install.packages("remotes")
remotes::install_github("ottosven/teachingdata")



library(teachingdata)
data(package = "teachingdata")
plot(gdp, main = "Quarterly GDP Germany")
plot(infl, main="Monthly CPI inflation rate Germany")
plot(temp, main="Average temperature Germany")
plot(covidcases$date, covidcases$GER, type="l", 
     main="Incidence number of reported Covid-19 infections Germany")



install.packages("tidyverse")



library(tidyverse)



class(iris) # iris is a data.frame
iris |> 
  ggplot(aes(x = Sepal.Length, y = Petal.Length, color = Species)) + 
  geom_point()



iris.tbl = as_tibble(iris) 
iris.tbl # iris.tbl is a tibble



library(tsibble)
library(feasts)



covid.tsibble = as_tsibble(covidcases, index=date) |>
  pivot_longer(-date, names_to = "state", values_to = "incidence") |>
  filter(state %in% c("GER", "NW", "BE"))
covid.tsibble
covid.tsibble |>
  autoplot(incidence) + theme(axis.title.x=element_blank())

