gaga=read.delim("clipboard")
View(gaga)
t.test(gaga$Volume, conf.level = 0.95)


gaga=read.delim("clipboard")
t.test(gaga$Volume, conf.level = 0.50)
