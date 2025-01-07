#Data Generator

#establishing 5 random species

Organism<- c("Beagle","Golden Retriever","German Shepard","Boxer", "Poodle")


#for loop randomly selecting 100 iterations of the species using the sample function
#each iteration is stored in element "Species", originally a blank vector as shown
Species<- character(100)#creating empty vector
for (i in 1:100){
  element<- sample(Organism, 1)
  Species [i]<- element 
}
print (Species) #printing to check 

#for loop selecting 100 random limb widths using runif function. 
#widths are selected from a random number between 1 and 2
#widths are rounded to 2 decimals using round function
#each iteration is stored in the element Limb_width
Limb_width<- character(100)#creating empty vector
for (i in 1:100){
  element1<- runif(1, min=1, max=2)
  rounded<- round(element1,2)
  Limb_width [i]<- rounded
}
print (Limb_width)#printing to check


#for loop selecting 100 random limb heights using runif function
#heights are selected from a random number between 5 and 10
#heights are rounded to 2 decimals using round function
#each iteration is stored in the element Limb_height
Limb_height<- character(100)#creating empty vector
for (i in 1:100){
  element2<- runif(1, min=5, max=10)
  rounded2<- round(element2,2)
  Limb_height [i]<- rounded2
}
print (Limb_height)#printing to check


#for loop to generate 100 random selections of an observer using sample function
#each iteration is stored in the element Observer
Observer<- character(100)#creating empty vector
for (i in 1:100){
  element3=sample(c("Jim", "Paul", "Laura"), 1)
  Observer[i]<- element3
}
print (Observer)#printing to check

My.Data<- data.frame(Organism= Organism, Limb_width= Limb_width, Limb_height=Limb_height, Observer=Observer)


write.csv(My.Data, file="Measurements", row.names=FALSE)



