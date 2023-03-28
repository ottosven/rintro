
2+2 # addition
2*2 # multiplication
2/2
2-2
2^3 # exponentiate



x <- 4 
x
4 -> x # possible but unusual
x
x = 4
x



y = c(2,7,4,1)
y



ls()
rm(list=ls())
ls()




x = 4
y = c(2,7,4,1)

x*y # each element in the vector y is multiplied by the scalar x
y*y # a term-by-term product of the elements in y




y^2
log(y)
exp(y)
y-mean(y)
(y-mean(y))/sd(y) # standardization 



N = length(y)
1:N

y.sq = rep(0,N)
y.sq

for(i in 1:N){
  y.sq[i] = y[i]^2
  if(i == N){
    print(y.sq)
  }
}



1:10
-10:10
?seq # Help for the seq()-function
seq(from=1, to=100, by=7) # sequence generation
rep(0,10) # replicate elements



y[c(2,4)]



y[y>2]

# Note that this gives you a boolean vector:
y>2



mymatrix = matrix(data=1:16, nrow=4, ncol=4)
mymatrix



mylist = list(
  "Some_Numbers" = c(66, 76, 55, 12, 4, 66, 8, 99), 
  "Animals"      = c("Rabbit", "Cat", "Elefant"),
  "My_Series"    = c(30:1)
) 



str(mylist)



mydataframe = data.frame(
  "Credit_Default"   = c( 0, 0, 1, 0, 1, 1), 
  "Age"              = c(35,41,55,36,44,26), 
  "Loan_in_1000_EUR" = c(55,65,23,12,98,76)
) 



mtcars



plot(subset(mtcars, select = c(wt, mpg)))



d = as.Date("2021-04-01") # a data object to store dates
class(d) # to get the object class
myseries = c(16,17,18,16,15,19)
mydates = seq.Date(as.Date("2021-04-01"), by=1, length.out = 6)
mytimeseries = data.frame(mydates, myseries)
mytimeseries



myts = ts(c(66, 76, 55, 12, 4, 66, 8, 99), start = 2020, frequency = 4)
myts
anothertimeseries = ts(1:50, start = 2015, frequency = 12)
anothertimeseries
# The window() command selects the time series observations for a given subperiod
window(anothertimeseries, start=2015.5, end=2017.5)



data() # lists all datasets currently loaded in the R environment
?AirPassengers # get more information about the dataset
AirPassengers
class(AirPassengers)  # AirPassengers is a ts object
plot(AirPassengers)

