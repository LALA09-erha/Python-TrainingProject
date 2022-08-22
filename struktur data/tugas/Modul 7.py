
 
 
class DemoMatriks:
    def __init__(self):
        # atur nilai matrix A dan matrix B
        self.matrix_A = [[4,7], [0, 8],[-5,-3]]
        self.matrix_B = [[2, -1], [3,5]]
 
        # hitung ukuran baris dan kolom
        self.barMatA = len(self.matrix_A)    # jumlah baris A
        self.kolMatA = len(self.matrix_A[0]) # jumlah kolom A
        self.barMatB = len(self.matrix_B)    # jumlah baris B
        self.kolMatB = len(self.matrix_B[0]) # jumlah kolom B
 
        # buat matrix kosong --> hasil proses aritmatika
        self.buatMatrixHasil(self.barMatA, self.kolMatB)
 
        self.buatMenu()
         
    def buatMenu(self):
        Menu ="""
##########  PROGRAM ARITMATIKA MATRIKS  #######
     
Pilihan Metode Aritmatika:
<1> Penjumlahan Matriks
<2> Pengurangan Matriks
<3> Perkalian Matriks
<4> Keluar
 
Silahkan Pilih Menu (1-4): """
 
        status = 0  # mati
        while not status:
            pilihan = input(Menu)
             
            print()
            print('Pilihan Anda: ', pilihan)
            print()
 
            if pilihan not in '1234':
                print('Pilihan Anda SALAH! Masukkan 1 - 4.')
                print()
            else:
                if pilihan == '4':
                    status = 1  # hidup
                elif pilihan == '1':
                    self.jumlahMatrix()
                elif pilihan == '2':
                    self.kurangMatrix()
                elif pilihan == '3':
                    self.kaliMatrix()
                 
                 
    def buatMatrixHasil(self, baris, kolom):
        self.matrix_Hasil = []
        for i in range(baris):
            data = []
            for j in range(kolom):
                data.append(0)      # berisi data 0
            self.matrix_Hasil.append(data)
         
    def jumlahMatrix(self):
        # proses penjumlahan Matrix
        for i in range(self.barMatA):
            for j in range(self.kolMatA):
                self.matrix_Hasil[i][j] = self.matrix_A[i][j] + self.matrix_B[i][j]
 
        print('Matrix A: ', self.matrix_A)
        print('Matrix B: ', self.matrix_B)
        print('Matrix A + B: ', self.matrix_Hasil)
                 
    def kurangMatrix(self):
        # proses pengurangan Matrix
        for i in range(self.barMatA):
            for j in range(self.kolMatA):
                self.matrix_Hasil[i][j] = self.matrix_A[i][j] - self.matrix_B[i][j]
 
        print('Matrix A: ', self.matrix_A)
        print('Matrix B: ', self.matrix_B)
        print('Matrix A - B: ', self.matrix_Hasil)
 
    def kaliMatrix(self):
        # proses perkalian Matrix
        for i in range(self.barMatA):
            for j in range(self.kolMatB):
                for k in range(self.barMatB):
                    self.matrix_Hasil[i][j] += self.matrix_A[i][k] * self.matrix_B[k][j]
 
        print('Matrix A: ', self.matrix_A)
        print('Matrix B: ', self.matrix_B)
        print('Matrix A x B: ', self.matrix_Hasil)
 
 
if __name__ == '__main__':
    aplikasi = DemoMatriks()