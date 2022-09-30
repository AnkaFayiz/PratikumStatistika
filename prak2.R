# Read Data dari CSV
data_anka_csv = read.csv("C:/Users/shish/Documents/Statistika/Pratikum/Prak2/ps2Anka.csv")
View(data_anka_csv)

# Subset data pada kolom Tinggi Badan
anka <- data_anka_csv[data_anka_csv$Tinggi.Badan>=165,]
View(anka)

# Mengubah nilai variabel
anka$Tinggi.Badan <- ifelse(anka$Tinggi.Badan > 165, c("Tinggi"),c("Pendek"))
View(anka)

# Membuat variabel baru 
anka$Jurusan <- c("Infor18")
View(anka)

anka$Fakultas <- c("FTI")
View(anka)

# Hapus Kolom
anka$Fakultas <- NULL
View(anka)

# Merge kolom
data_anka_csv.kolomNamaDanGender <- data_anka_csv[,1:2]
View(data_anka_csv.kolomNamaDanGender)

data_anka_csv.kolomAngkatanDanTinggi <- data_anka_csv[,3:4]
View(data_anka_csv.kolomAngkatanDanTinggi)

data_anka_csv.kolom1sd4 <- cbind(data_anka_csv.kolomNamaDanGender, data_anka_csv.kolomAngkatanDanTinggi)
View(data_anka_csv.kolom1sd4)

# Merge Baris
data_anka_csv.baris1sd5 <- data_anka_csv[1:5,]
data_anka_csv.baris25sd30 <- data_anka_csv[25:30,]
data_anka_csv.baris1sd5dan25sd30 <- rbind(data_anka_csv.baris1sd5, data_anka_csv.baris25sd30)
View(data_anka_csv.baris1sd5dan25sd30)

# Sort Data
data_anka_csv.sort <- data_anka_csv[order(data_anka_csv$Waktu.Perjalanan),]
View(data_anka_csv.sort)
