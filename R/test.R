dataset <- read.csv('../Data.csv')

# removes all null values from age
dataset$Age <- ifelse(is.na(dataset$Age),
                      ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                      dataset$Age)

# removes all null values from Salary
dataset$Salary <- ifelse(is.na(dataset$Salary),
                         ave(dataset$Age, Fun = function(x) mean(x, na.rm = TRUE)),
                         dataset$Age)
# another approach
dataset$Salary <- replace(dataset$Salary, is.na(dataset$Salary), mean(dataset$Salary, na.rm = TRUE))
