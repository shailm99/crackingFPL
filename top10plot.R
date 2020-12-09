top10  <- read.csv('/Users/shailmirpuri/Documents/Python_Files/Bruin Sports Analytics/Fall 2020 - FPL/top10.csv')
top10
last_names <- strsplit(top10$Player , split = ' ')
last_names <- lapply(last_names, function(x) {x[-1]})
last_names[[3]]<- paste(last_names[[3]], collapse = ' ')
last_names[[7]] <- c("Mane")      
last_names
plotthis <- top10$total_points
names(plotthis) <-  last_names
barplot(plotthis, col = c(rep(4,9), 3), density = c(25, 25, 25, 15, 25, 25, 25, 25, 25, 25), 
        angle = c(90, 90, 90, 45, 90, 90, 90, 90, 90, 90),ylim = c(0,350) , main = "Top 10 Seasonal FPL Performances \n Since 2005/06")
legend('topright', c("Goalkeepers", "Defenders", "Midfielders", "Forwards", c("Budget", "Mid-Range", "Premium")), 
       density = c(100, 100, 100, 100, 30,30,30), 
       angle = c(100, 100, 100, 100, 0,45,90), 
       fill = c(2,1,4,3, 6,6,6), 
       inset =0.05,
       cex = 0.9)
text_points <- locator(10)
text(text_points, top10$season, col = c(14,16,19,10,16, 19, 16, 14, 7,7))


