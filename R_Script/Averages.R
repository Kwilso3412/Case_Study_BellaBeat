# installs necessary packages to complete analysis 
install.packages('rmarkdown')
library(rmarkdown)
install.packages("tidyverse")
library(tidyverse)
install.packages("ggplot2")
library(ggplot2)

#####  Calories   #################################

# loads calories file
library(readxl)
calories <- read_excel("SQL Query Code/Results/Average Calories per day.xls")
calo = data.frame(calories)

# Makes scatter plot for the Average Calories per day
ggplot(data=calo, mapping = aes(x=ActivityDate, y=Calories_Per_day)) +geom_point() +
  geom_smooth(method = lm) + ggtitle('Average Calories Per Day') + labs(x = 'Day', y ='Calories')



#####  Tracked Distance  ##########################

# loads tracked distance file
library(readxl)
tracked_distance <- read_excel("SQL Query Code/Results/Average Distance Tracked.xls")
trac = data.frame(tracked_distance)

# Makes scatter plot for the Average Tracked Distance per day
ggplot(data=trac, mapping = aes(x=ActivityDate, y=Distance_tracked_Per_Day)) +geom_point() +
  geom_smooth(method = lm) + ggtitle('Average Tracked Distance Per Day') + labs(x = 'Day', y ='Distance')




#####  Total Distance #########################

# loads distance file
library(readxl)
distance <- read_excel("SQL Query Code/Results/Average Distance Traveled.xls")
dis = data.frame(distance)


# Makes scatter plot for the Average Tracked Distance per day
ggplot(data=dis, mapping = aes(x=ActivityDate, y=Distance_traveled_Per_Day)) +geom_point() +
  geom_smooth(method = lm) + ggtitle('Average Distance Per Day') + labs(x = 'Day', y ='Distance')




#####  Steps  ###############################

# loads steps file 
library(readxl)
steps <- read_excel("SQL Query Code/Results/Average steps per day.xls")
ste = data.frame(steps)

# Makes scatter plot for the Average Tracked Distance per day
ggplot(data=ste, mapping = aes(x=ActivityDate, y=Average_Total_steps)) +geom_point() +
  geom_smooth(method = lm) + ggtitle('Average Steps Per Day') + labs(x = 'Day', y ='Steps')







