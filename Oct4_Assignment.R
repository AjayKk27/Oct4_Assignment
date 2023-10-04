library(tidyverse)

#Reading in strawberry
strawberry<- read.csv("strawberry_oct4.csv", header=TRUE)

#Creating dataframes splitting strawberry into CENSUS and SURVEY
strwb_census <- strawberry |> filter(Program=="CENSUS")
strwb_survey<- strawberry |> filter(Program=="SURVEY")

strwb_census$Value<- as.numeric(str_replace_all(strwb_census$Value,",",""))

uncomma<- function(var){
  dist_footnotes <- unique(var[which(is.na(as.numeric(var)))])
  return(list(str_replace_all(var,",",""), dist_footnotes))
}
uncomma(strwb_census$Value)
