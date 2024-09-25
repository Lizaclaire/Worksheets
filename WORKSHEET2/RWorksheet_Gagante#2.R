
#1

x <- -5:5
x

x <- 1:7
x



#2

x <- seq(1,3, by=0.2)
x


#3

22


28 & 36

 

#4 
x <- c("first" =3, "second" =0, "third" =9)
x


x 
x[c("first","third")]

 
x <- c("first" =3, "second" =0, "third" =9)
x
x[c("first","third")]


#5
x <- -3:2
x


 
x[2] <- 0
x

x[2] = 0
x


x <- -3:2
x[2] <- 0
x


#6
month <- c("Jan","Feb", "March", "Apr", "May", "June")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25, 30, 40, 50, 10, 45)
fuel_data <- data.frame(month, price_per_liter, purchase_quantity)
fuel_data


average_fuel_expenditure <- weighted.mean(price_per_liter, purchase_quantity)
average_fuel_expenditure



#7 
data (rivers)

data <- c(length(rivers), #Number of elements
          sum(rivers),    #Sum of all elements
          mean(rivers),   #Mean
          median(rivers), #Median
          var(rivers),    #Variance
          sd(rivers),     #Standard deviation
          min(rivers),    #Minimum value
          max(rivers)    #Maximum value
)
data


 
Length: 141.0000
Sum: 83357.0000
Mean: 591.1844 
Median: 425.0000
Variance: 243908.4086
Standard:  493.8708
Minimum:  135.0000
Maximum: 3710.0000

data (rivers)

data <- c(length(rivers), #Number of elements
          sum(rivers),    #Sum of all elements
          mean(rivers),   #Mean
          median(rivers), #Median
          var(rivers),    #Variance
          sd(rivers),     #Standard deviation
          min(rivers),    #Minimum value
          max(rivers)    #Maximum value
)
data



Length: 141.0000
Sum: 83357.0000
Mean: 591.1844 
Median: 425.0000
Variance: 243908.4086
Standard:  493.8708
Minimum:  135.0000
Maximum: 3710.0000

#8 
power_ranking <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
celebrity_name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", 
                    "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", 
                    "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", 
                    "Paul McCartney", "George Lucas", "Elton John", "David Letterman", 
                    "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson", 
                    "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")
pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)

power_ranking
celebrity_name
pay



celebrity_name[19] <- "J.K Rowling"
power_ranking[19] <- 15
pay[19] <- 90

power_ranking
celebrity_name
pay




imported_data <- read.csv("PowerRanking.csv")
print(imported_data)


 
ranks <- imported_data[10:20, ]

save(ranks, file = "Ranks.RData")

print(ranks)




#9 

library(openxlsx)
hotels_vienna <- read.xlsx("hotels-vienna.xlsx")


 
dim(hotels_vienna)



 
selcol <- hotels_vienna[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]


 
save(selcol, file = "new.RData")


 
load("new.RData")
head(selcol)
tail(selcol)


#10 
veg <- list("Lettuce","Cabbage","Carrot","Corn","Cucumber","Potatoes","Pumpkin","Eggplant","Spinach","Tomatoes")
veg


 
veg <- append(veg,list("Okra","Papaya"))
veg

Output:
  Lettuce
Cabbage
Carrot
Corn
Cucumber
Potatoes
Pumpkin
Eggplant
Spinach
Tomatoes
Okra
Papaya

 
veg <- append(veg, list("Mushroom","Radish","Green Peas","Asparagus"), after = 5)
veg

Output:
  Lettuce
Cabbage
Carrot
Corn
Cucumber
Mushroom
Radish
GreenPeas
Asparagus
Potatoes
Pumpkins
Eggplant
Spinach
Tomatoes
Okra
Papaya


veg <- veg[-c(5, 10, 15)]
veg

Output:
  Lettuce
Cabbage
Carrot
Corn
Mushroom
Radish
GreenPeas
Asparagus
Pumpkin
Eggplant
Spinach
Tomatoes
Papaya