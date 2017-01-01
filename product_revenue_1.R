library(gdata)
library(ggplot2)

#load csv data to "data" object
data <- read.csv("C:/Users/saads/Downloads/Compressed/product_revenue_1/product_revenue.csv")

#To check summary of dataset
summary(data)

#To check total numbers of rows
nrow(data)

#To get data variables in separate R variable
yitemrevenue <- data$yitemrevenue
xcartadd <- data$xcartadd
xcartuniqadd <- data$xcartuniqadd
xcartaddtotalrs <- data$xcartaddtotalrs
xcartremove <- data$xcartremove
xcardtremovetotal <- data$xcardtremovetotal
xcardtremovetotalrs <- data$xcardtremovetotalrs
xproductviews <- data$xproductviews
xuniqprodview <- data$xuniqprodview
xprodviewinrs <- data$xprodviewinrs


#To develop Regression model for with ourliers dataset
model <- lm(formula=yitemrevenue ~ xcartadd + xcartuniqadd + xcartaddtotalrs + xcartremove + xcardtremovetotal + xcardtremovetotalrs + xproductviews + xuniqprodview + xprodviewinrs , data = data)

#To check summary of model
summary(model)
