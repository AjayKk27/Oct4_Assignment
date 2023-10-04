library(tidyverse)

#Reading in strawberry
strawberry<- read.csv("strawberry_oct4.csv", header=TRUE)

#Creating dataframes splitting strawberry into CENSUS and SURVEY
strwb_census <- strawberry |> filter(Program=="CENSUS")
strwb_survey<- strawberry |> filter(Program=="SURVEY")