#Volume Estimator
library(dplyr)
library(ggplot2)

dat<-read.csv("Measurements")

#importing measurements data set
print(dat)

#checking for successful import

#mutate function overwrites original data set to add new elements
#added new column Limb_volume, that calculates an estimated limb volume
#using the volume of a cylinder (radius=limb_width, height=limb_height)
dat<-dat %>% mutate(Limb_volume= (pi*(dat$Limb_width)^2*(dat$Limb_height)))

head(dat)#checking for successful column addition 


#overwriting the previous csv file to include new volume addition
write.csv(dat, file="Measurements", row.names=FALSE)
