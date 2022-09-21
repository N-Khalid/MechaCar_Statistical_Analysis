# Deliverable 1

  # Importing the dataset file - can be JSON, CSV, etc
Mecha_Car_Table <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

  # Create the multiple linear regression model
lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=Mecha_Car_Table) 
  # Viewing summary Statistics
summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=Mecha_Car_Table)) 

# Deliverable 2

# Importing the dataset file - can be JSON, CSV, etc
 
Suspension_Table <- read.csv(file='Suspension_Coil.csv', check.names = F,stringsAsFactors = F)

# Summary Table - PSI
Total_Summary <- Suspension_Table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

Lot_Summary <- Suspension_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 

# Deliverable 3

  
t.test((Suspension_Table$PSI),mu=1500) #compare all manufacturing lots to the population mean

t.test(subset(Suspension_Table, Manufacturing_Lot == "Lot1")$PSI, mu=1500) #compare the psi values from lot1 to the population mean

t.test(subset(Suspension_Table, Manufacturing_Lot == "Lot2")$PSI, mu=1500) #compare the psi values from lot2 to the population mean

t.test(subset(Suspension_Table, Manufacturing_Lot == "Lot3")$PSI, mu=1500) #compare the psi values from lot3 to the population mean


