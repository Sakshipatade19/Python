# Pie chart
x <- c(62,21,10,53)
labels <- c("Mumbai","Delhi","Hyderabad","Surat") 
pie(x,labels)


# Pie chart with color
pie(x,labels,main="City Pie Chart",col=rainbow(length(x)))


# pie chart with labels
pie(x,labels,main="City Pie Chart",col=rainbow(length(x))) 
legend("topright",c(labels), cex=0.8,fill=rainbow(length(x)))


# 3d Pie chart
install.packages("plotrix")
library("plotrix")
pie3D(x,labels=labels,explode =0.1,main="Pie chart of Capitals")


# Bar chart
h<-c(24,13,16,32,21,28)
barplot(h)


# Bar Chart with attributes
h<- c(22,17,35,42)
m <- c("Jan","Feb","Mar","Apr")
barplot(h,names.arg = m,xlabel="Months",ylabel="Sales"
        ,col="green",main="Sales chart",border="black")


# Bar Chart - Stacked
colors <- c("green","orange","brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow = 
                   3,ncol = 5,byrow = TRUE)
barplot(Values,main = "total revenue",names.arg = months,xlab = 
          "month",ylab = "revenue", col = colors)
legend("topleft", regions, cex = 0.7, fill = colors)


# Box Plot
input <- mtcars[,c('mpg','cyl')]
print(head(input))

boxplot(mpg~cyl, data = mtcars, xlab = 
          "Number of Cylinders", ylab = "Miles Per Gallon", main = "Mileage Data")


# Box plot with notch
boxplot(mpg ~ cyl, data = mtcars, 
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", 
        main = "Mileage Data",
        notch = TRUE, 
        varwidth = TRUE, 
        col = c("green","yellow","purple"),
        names = c("High","Medium","Low")
)

# Histogram
v <- c(9,13,21,8,36,22,12,41,31,33,19)
hist(v,xlab = "Weight",col = "yellow",border = "blue")
hist(v,xlab = "Weight",col = "green",border = 
       "red", xlim = c(0,40), ylim = c(0,5), breaks = 5)


#Line graph
v <- c(7,12,28,3,41)
plot(v,type = "o", col = "red", xlab = "Month", 
     ylab = "Rain fall", main = "Rain fall chart")

# Multiple lines in chart
v <- c(7,12,28,3,41)
t <- c(14,7,6,19,3)
plot(v,type = "o",col = "red", xlab = "Month", ylab = "Rain 
fall", main = "Rain fall chart")
lines(t, type = "o", col = "blue")

# ScatterPlot
input <- mtcars[,c('wt','mpg')]
head(input)
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30), 
     main = "Weight vs Milage"
)

# Scatter Plot matrices
pairs(~wt+mpg+disp+cyl,data = mtcars,main = "Scatterplot Matrix")
