df_gaga = read.delim("clipboard")
View(df_gaga)
head(df_gaga)

model <- aov(Korosi~Metode, data=df_gaga)
summary(model)

tukey.test <- TukeyHSD(model)
tukey.test


#TUGAS 2
df_gaga=PlantGrowth
View(df_gaga)

#analisis anova
model <- aov(weight~group, data=df_gaga)
summary(model)

#Analisis Tukey Test
tukey.test <- TukeyHSD(model)
tukey.test