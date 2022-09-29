data_gaga=read.csv2("C:/Users/gagaputra/Downloads/data_r_gagah.csv",1)
View(data_gaga)
gaga <- data_gaga[data_gaga$tinggi.badan==178,]
View(gaga)

data_gaga$tinggi.badan <- ifelse(data_gaga$tinggi.badan > 160,c("tinggi"),c("pendek")) 
View(gaga)

data_gaga$Jurusan <- c("Infor20")
data_gaga$Fakultas<- c("FTI")
View(data_gaga)

data_gaga$Fakultas<-NULL

data_gaga.namagen <- data_gaga[1:2] 
View(data_gaga.namagen)
data_gaga.namagen1 <- data_gaga[3:4]
View(data_gaga.namagen1)
data_gaga.gabungan<-cbind(data_gaga.namagen,data_gaga.namagen1)
View(data_gaga.gabungan)

data_baris_gaga1sampai5<-data_gaga[1:5,]
data_baris_gaga.25sampai30<-data_gaga[25:30,]
data_baris_gaga.gabungan<-rbind(data_baris_gaga1sampai5,data_baris_gaga.25sampai30)
View(data_baris_gaga.gabungan)

data_gaga.sort<-data_gaga[order(data_gaga$waktu.perjalanan),]
View(data_gaga.sort)


