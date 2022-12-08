df_gaga=read.delim("clipboard")
head(df_gaga)
model_reg=lm(df_gaga$y~df_gaga$x)
summary(model_reg)


#LAtihan 2

df_gaga=read.delim("clipboard")
df_gaga$brick_dummy<- ifelse(df_gaga$Brick == "Yes", 1,0)
df_gaga$N_dummy1<- ifelse(df_gaga$Neighborhood == "West", 1,0)
df_gaga$N_dummy2<- ifelse(df_gaga$Neighborhood == "North", 1,0)
model_reg=lm(df_gaga$Price~df_gaga$SqFt+df_gaga$Bedrooms+df_gaga$Bathrooms+df_gaga$brick_dummy+df_gaga$N_dummy1+df_gaga$N_dummy2)
summary(model_reg)


by(df_gaga$Price,df_gaga$Neighborhood,mean)

by(df_gaga$Price,df_gaga$Brick,mean)