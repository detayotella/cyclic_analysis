# Goggle Data Analytics Captsone

This is the repository for the goggle data analytics capstone project.

# Cyclistic Data Exploration 
### by Tella Adetayo


## Dataset

Cyclistic is a bike sharing company that was launched in 2016. The program started with a fleet of bicycles of 5,824 which 
geotracked and locked into a network of 692 stations across chicago. The bike can be unlocked and locked from one station
and return to any other station in the system anytime. The Datasets are available "https://divvy-tripdata.s3.amazonaws.com/index.html"


There are four different datasets which are merged into a single datasets called the trip_data_master. The dataset contains
15 columns and rows. The columns names are:
- ride_id: The unique identifier for each rides
- start_time: The datetime which each ride is started
- end_time: The datetime which each ride ends 
- bikeid: The unique identifer for every bikes
- tripdurarion: The total duration for every trips
- from_station_id: The unique identifer for the beginning station
- from_station_name: The name of every station where each rides are started
- to_station_id: The unique identifer for ending station
- to_station_name: The name of every station where each rides are ended
- usertype: The type of users for each trip
- gender: The type of genders for each trip
- birthyear: The birth year for every riders


## Data Processing

The tool used for the analysis is R. The packages used for this analysis are tidyverse, here, dplyr, janitor, skimr and ggplot2.

The datasets were four in numbers and the the second dataset column name was changed and then it was merged with the other 
datasets into a master dataset called trip_data_master. The na values was checked and was dropped, the general overview was
checked also.



## Summary Findings

In the Exploration, i found the the peak for most rides on a weekday is tuesday and subscribers are the most common user
who took a ride which is a lot larger than the customer. 

I also found out that the peak for every rides during the hour is 5pm in the evening which shows that it is more likely
the time people are going back home or ending to other destinations for relaxation.

I also found out that the most common type of users that took a trips on each days are the subscribers which also shows
they are likely the people taking a ride for the first time or people who are just interested in taking a ride once in a 
while and are not interested in being a customer.


