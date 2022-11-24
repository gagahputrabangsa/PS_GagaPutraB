#membangkitkan data yang berdistribusi Normal
gaga=rnorm(100, 0, 1)
View(gaga)
hist(gaga)

pnorm(160, 165, 6)

#peluang menemukan seorang mhs yang tingginya lebih dari 180 cm
1-pnorm(180, 165, 6)

#Jika dipilih 5 orang mahasiswa, berapa peluang terdapat 2 mahasiswa yang tingginya antara 160 dan 180 cm?
pnorm(180, 165,6) - pnorm(160, 165,6)
dbinom(2, 5, 0.791462)

#persentase peserta tes masuk yang memiliki nilai 84 atau lebih? jika rerata 72 dan simpangan baku 15.2.
pnorm(84, mean=72, sd=15.2, lower.tail=FALSE)
1-pnorm(84, 72, 15.2)


#TUGAS GAGA

#bangkitin data dgn n = 1000
gaga_kyun=rnorm(1000,165,15 )
View(gaga_kyun)
hist(gaga_kyun)

gaga_kyun=rnorm(1000,3.12,0.25 )
View(gaga_kyun)
hist(gaga_kyun)

#TUGAS II
pnorm(150,165,6)

1-pnorm(170, 165, 6)

pnorm(180, 165,6) - pnorm(150, 165,6)
dbinom(2, 7,0.9875807)

#TUGAS III
#peluang waktu perjalanan yang ditempuh Agus berkisar 125 hingga 158 menit

prob_diatas_158= pnorm(158, mean = 175, sd = 30, lower.tail = FALSE)
print(prob_diatas_158)
prob_dibawah_125= pnorm(125, mean = 175, sd = 30, lower.tail = TRUE)
print(prob_dibawah_125)
#probabilitas range
prob_range = 1 - prob_diatas_158 - prob_dibawah_125
print(prob_range)

1-pnorm(150, 175, 30)