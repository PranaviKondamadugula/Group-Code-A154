df<- read.csv("flight_data_DEL_HYD.csv")
df$Price <- as.numeric(gsub(",", "", df$Price))
wilcox_test <- wilcox.test(df$Price ~ df$ArrivingCity, data = df)

print(wilcox_test)