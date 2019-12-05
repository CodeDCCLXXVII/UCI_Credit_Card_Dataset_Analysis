# Loading data
L_Data <- readxl::read_excel("/home/dcclxxvii/git/UCI_Credit_Card_Dataset_Analysis/bankloans_CreditRiskAnalysis.xlsx") 

# View data
View(L_Data)

#Relation between income and defaulting
boxplot(L_Data$income ~ L_Data$default, data = L_Data,
        xlab = "Default payment",
        ylab = "Income", 
        main = "Distribution relation betwwen Income and Default payment")
# insights people who earn less tend to defaut more in payments