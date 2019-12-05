# Loading data
C_Data <- read.csv('UCI_Credit_Card.csv')

# View data
View(C_Data)

#view head
head(C_Data)

#view tail
tail(C_Data)

#Get summary
summary(C_Data)

# Get Columns   
names(C_Data)
# Get deeper analysis
install.packages("psych")
# load the library
library(psych)
# invoke the describe method
describe(C_Data)


# Visualisation and analysis

hist(C_Data$SEX, xlab = 'SEX', ylab = 'COUNT',
     main = "SEX v/s COUNT", col= 'blue')
# insights number of mae credit holder is less than female


hist(C_Data$default.payment.next.month, xlab = 'DEFAULT_PAY',
     ylab = 'COUNT',
     main = 'Default Credit Card Clients - 
     target value - data unbalance\n (Default = 0, Not Default = 1)', col= 'blue')
# insights Percentage of Defaulters are smaller than the Non Defaulters in the given dataset

hist(C_Data$EDUCATION, xlab = 'EDUCATION', ylab = 'COUNT',
     main = 'EDUCATION v/s COUNT', col= 'blue')
# insights More number of credit holders are university students followed by Graduates and then High school students


hist(C_Data$MARRIAGE, xlab = 'MARRIAGE', ylab = 'COUNT',
     main ='MARRIAGE v/s COUNT', col= 'blue')
# insights More number of credit cards holder are Married

barplot(table(C_Data$LIMIT_BAL, C_Data$SEX), xlab = 'SEX',
        ylab='LIMIT_BAL', col = 'orange', main = 'Balance Limit sexwise')
#insights female has a higher bal limit


barplot(table(C_Data$default.payment.next.month, C_Data$SEX), xlab = 'SEX',
        main = 'Defaulters and non defaulters sexwise',
        ylab='COUNT', col = c('blue', 'orange'), beside = TRUE)
#insights It is evident from the above output that females have overall less default payments wrt males 
# Non-Defaults have a higher proportion of Females (Sex=2)


barplot(table(C_Data$default.payment.next.month, C_Data$MARRIAGE), xlab = 'Marriage',
        main = 'Default payment wrt Married status',
        ylab='COUNT', col = c('blue', 'orange'), beside = TRUE)
#insights From the above plot it is clear that those people who
# have marital status single have less default payment wrt married status people


boxplot(C_Data$AGE ~ C_Data$default.payment.next.month, data = C_Data,
        xlab = "Default payment",
        ylab = "AGE", main = "Didribution relation betwwen AGE and Default payment")
#insights more outliers on non-defaulters wrt to AGE

boxplot(C_Data$EDUCATION ~ C_Data$default.payment.next.month, data = C_Data,
        xlab = "Default payment",
        ylab = "EDUCATION", 
        main = "Distribution relation betwwen Education and Default payment")
#insights defaulters wrt to education has first quartile


boxplot(C_Data$MARRIAGE ~ C_Data$default.payment.next.month, data = C_Data,
        xlab = "Default payment",
        ylab = "Marriage", 
        main = "Distribution relation betwwen Marriage and Default payment")
# insights perfectly distributed








