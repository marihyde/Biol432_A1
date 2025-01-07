#Creating a vector of 5 different breeds of dogs
Species<- c("Beagle","Golden Retriever","German Shepard","Boxer", "Poodle")

#running a sample of 100 randomly selected species. replace=TRUE allows a species
#to be selected more than once. 
Organism<- sample(Species, size=100, replace=TRUE)
head(Organism)

Limb_width<- round(runif(100, min=0, max=2),2)
head(Limb_width)

Limb_height<- round(runif(100, min=0, max=10),2)
head(Limb_height)

Observor<- sample((c("Jim", "Paul", "Laura")), size=100, replace=TRUE)
head(Observor)

My.Data<- data.frame(Organism= Organism, Limb_width= Limb_width, Limb_height=Limb_height, Observor=Observor)

head(My.Data)

head(My.Data)

print(My.Data)
plot (x= My.Data$Limb_width, y= My.Data$Limb_height)
ß