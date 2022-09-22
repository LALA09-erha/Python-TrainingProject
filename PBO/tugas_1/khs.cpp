#include <iostream>
using namespace std;

// Deklarasi class
class Matakuliah {
    public:
    string name;
    string code;
    int semester;
    
};
class Khs{


    public:
    int n;
    Matakuliah *matkul = new Matakuliah[n];
    void setMatakuliah(){
        // pointer array of object
        cout << "\nMasukkan jumlah matakuliah: ";
        cin >> n;
        for(int i=0; i<n; i++){
            cout << "Masukkan nama matakuliah ke- " << i+1 << ": ";
            cin >> matkul[i].name;
            cout << "Masukkan kode matakuliah ke- " << i+1 << ": ";
            cin >> matkul[i].code;
            cout << "Masukkan semester matakuliah ke- " << i+1 << ":";
            cin >> matkul[i].semester;
        }

    };

    int nilai;
};

class Mahasiswa {

    public : 
    void setKhs(){
        // pointer object khs 
        Khs *khs = new Khs;
        khs->setMatakuliah();
        khs->n;
        for (int i=0; i<khs->n; i++){
            //  menampilkan matakuliah
            cout << "Masukkan nilai matakuliah "<< khs->matkul[i].name <<" :";
            cin >> khs->nilai;
            cout << "Matakuliah: " << khs->matkul[i].name << endl;
            cout << "Kode: " << khs->matkul[i].code << endl;
            cout << "Semester: " << khs->matkul[i].semester << endl;
            cout << "Nilai matakuliah: " << khs->nilai << endl;
        }
    }
    string name;
    string alamat;
    int semester;
};

class Prodi{
    
    public:
    void setMahasiswa(){
        Mahasiswa mahasiswa;
        mahasiswa.name = "Rizki";
        mahasiswa.alamat = "Jl. Kaliurang km 14.5";
        mahasiswa.semester = 3;
        cout << "Nama Mahasiswa : " << mahasiswa.name << endl;
        cout << "Alamat : " << mahasiswa.alamat << endl;
        cout << "Semester : " << mahasiswa.semester << endl;
        mahasiswa.setKhs();
    }
    string name;
    string code;
};

// // Fungsi utama
int main() {
    // Deklarasi variabel
    Prodi data_prodi1;
    data_prodi1.name = "Teknik Informatika";
    data_prodi1.code = "IF";
    cout << "Nama Prodi : " << data_prodi1.name << endl;
    cout << "Kode Prodi : " << data_prodi1.code << endl;
    data_prodi1.setMahasiswa();

    return 0;
}