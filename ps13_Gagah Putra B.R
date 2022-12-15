#A.1

dataku_gagah = read.delim("clipboard")
View(dataku_gagah)
wilcox.test(dataku_gagah$Sebelum,dataku_gagah$Setelah ,paired=TRUE)


#A.2
dataku_gagah = read.delim("clipboard")
View(dataku_gagah)
wilcox.test(dataku_gagah$Sebelum,dataku_gagah$Sesudah ,paired=TRUE)

#B
df_gagah=read.delim("clipboard")
# independent 2-group Mann-Whitney U Test
wilcox.test(df_gagah$obat~df_gagah$grup)
# where y is numeric and A is A binary factor
head(df_gagah)
rank(df_gagah$obat)

#C 1 (tugas)
dataku_gagah = read.delim("clipboard")
View(dataku_gagah)
wilcox.test(dataku_gagah$Ganjil,dataku_gagah$Genap ,paired=TRUE)

#C 2 (tugas)
dataku_gagah = read.delim("clipboard")
View(dataku_gagah)
wilcox.test(dataku_gagah$caffeine,dataku_gagah$placebo ,paired=TRUE)
