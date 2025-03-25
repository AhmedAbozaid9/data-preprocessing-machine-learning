dataset <- read.csv('../Data.csv')

# removes all null values from age
dataset$Age <- ifelse(is.na(dataset$Age),
                      ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                      dataset$Age)

# removes all null values from Salary