# Load the neccesarry libararies
library("tidyverse")
library("here")
library("janitor")
library("skimr")
library("lubridate")
library("dplyr")
library("ggplot2")

# Load the datasets
trip_data_q1 <- read_csv("C:/Users/ADETAYO/Downloads/Divvy_Trips_2019_Q1/Divvy_Trips_2019_Q1.csv")
head(trip_data_q1)

trip_data_q2 <- read_csv("C:/Users/ADETAYO/Downloads/Divvy_Trips_2019_Q2/Divvy_Trips_2019_Q2.csv")
head(trip_data_q2)

trip_data_q3 <- read_csv("C:/Users/ADETAYO/Downloads/Divvy_Trips_2019_Q3/Divvy_Trips_2019_Q3.csv")
head(trip_data_q3)

trip_data_q4 <- read_csv("C:/Users/ADETAYO/Downloads/Divvy_Trips_2019_Q4/Divvy_Trips_2019_Q4.csv")
head(trip_data_q4)

# Renaming the second dataset column
colnames(trip_data_q2) <- c("trip_id", "start_time", "end_time", "bikeid", 
                            "tripduration", "from_station_id", "from_station_name", 
                            "to_station_id", "to_station_name", "usertype", 
                            "gender", "birthyear")
head(trip_data_q2)

# Check if column names are identical
identical(names(trip_data_q1), names(trip_data_q2))

identical(names(trip_data_q3), names(trip_data_q4))

# Merge the datasets into a single dataset

trip_data_master <- rbind(trip_data_q1, trip_data_q2, trip_data_q3, 
                          trip_data_q4)
head(trip_data_master)

# Checking the head of the dataset
head(trip_data_master)

# General overview of the dataset
skim_without_charts(trip_data_master)

# Checking the sum of the na values
sum(is.na(trip_data_master))

# shape of the dataset
dim(trip_data_master)

# Dropping the na values
trip_data_master <- na.omit(trip_data_master)
dim(trip_data_master)

# start and end for each rides
trip_data_master$ride_length <- trip_data_master$end_time - trip_data_master$start_time
head(trip_data_master)

# creating weekday name 
trip_data_master$weekday <- wday(trip_data_master$start_time, label = TRUE)
head(trip_data_master)

# Creating hour column per rides
trip_data_master$start_hour <- hour(trip_data_master$start_time)


#  what day have the highest number of rides?
ggplot(data = trip_data_master) + 
  geom_bar(mapping = aes(x = weekday)) + 
  labs(title = "Average number of trips per day")


# What are the type of user that took a trip?
ggplot(data = trip_data_master) + 
  geom_bar(mapping = aes(x = usertype)) + 
  labs(title = "Total number of users")

# What gender took the most trip all year round?
ggplot(data = trip_data_master) +
  geom_bar(mapping = aes(x = gender)) + 
  labs(title = "Number of genders per rides")

# What hour is the peak for the starting hour for rides?
ggplot(data = trip_data_master) + 
  geom_bar(mapping = aes(x = start_hour)) + 
  labs(title = "Start hour for each rides")

# What type of user take the most trips per day?
ggplot(data = trip_data_master) + 
  geom_bar(mapping = aes(x = weekday, fill = usertype), position = "dodge")