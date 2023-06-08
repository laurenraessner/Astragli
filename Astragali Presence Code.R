#Code below exaims the presence of Proximal Plantar Tuberosity, Essner Facet, and the Tarsal Protuberence

#Sets the working directory
#getwd() finds directory 
setwd("/Users/laurenessnerjones/Documents")


#Load in your data:
#list.files() in command line to find file names in documents
AP <- read.csv( "AdditionalAstragalusSpecies.xlsx - Facet Presence.csv")


#Creates LM Table and runs LM chi-squared test
LM_Table <- as.table(rbind(c(1, 6, 6), c(0, 5, 5), c(6, 6, 5), c(5, 10 ,9), c(4, 6, 0), c(4, 7, 7)
                           ))
dimnames(LM_Table) <- list(Locomotor_Mode = c("Scansorial", "Semiaquatic", "Terrestrial", "Arboreal", "Cursorial", "Semifossorial"),
                    Presence = c("Proximal Plantar Tuberosity","Essner Facet", "Tarsal Protuberance"))

LM_chisq <- chisq.test(LM_Table)

#Creates Family Table and runs LM chi-squared test
Family_Table <- as.table(rbind(c(6, 17, 16), c(9, 12, 3), c(2, 7, 7), c(1, 3, 3), c(2, 2, 3), c(2, 2, 2)
))
dimnames(Family_Table) <- list(Family = c("Mustelidae", "Canidae", "Procyonidae", "Mephitidae", "Usridae", "Ailuridae"),
                           Presence = c("Proximal Plantar Tuberosity","Essner Facet", "Tarsal Protuberance"))

Family_chisq <- chisq.test(Family_Table)


