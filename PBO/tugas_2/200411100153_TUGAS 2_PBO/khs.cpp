#include <iostream>
#include <list>
#include <vector>
#include <algorithm>
using namespace std;

// make class khs ,prodi, and mahasiswa
class Khs {
    public:
        explicit Khs(string nm="", string mk="", string nilai="",string dosen=""):nim(nm),course(mk),grade(nilai),namadosen(dosen){};
        // Khs(const Khs& orig);
        virtual ~Khs();
        friend class Mahasiswa;
        string getCourse();
        string getGrade();
        string getNim();
        void setCourse(string c);
        void setGrade(string g);
    private:
            string nim;
            string course;
            string grade;
            string namadosen;
};


class Mahasiswa {
    int counter;
    public:
        friend class Prodi;
        // Mahasiswa();
        explicit Mahasiswa(string nm="", string nama=""):nim(nm),name(nama){};
        Mahasiswa(const Mahasiswa& orig);
        virtual ~Mahasiswa();
        void setKhs(Khs *khs);
        void printKhs();
        Khs *getKhs();
        string getName();
        string getNim();
        void setName(string n);
        void setNim(string n);
        void setCounter();
        int getCounter();
        void setListKhs(list<Khs> lkhs);
        void setListKhs(Khs khss);
        void printListKhs();
        list<Khs> getListKhs();
    private:
        string nim;
        string name;
        Khs *khs[1000];
        list<Khs> lKhs;    
};

class Dosen {
    int counterrr;
    public:
        explicit Dosen(string nm="", string nama=""):nidn(nm),name(nama){};
        Dosen(const Dosen& orig);
        virtual ~Dosen();
        void setKhs(Khs *khs);
        void printKhs();
        Khs *getKhs();
        string getName();
        string getNim();
        void setName(string n);
        void setNim(string n);
        void setCounter();
        int getCounter();
        void setListKhs(list<Khs> lkhs);
        void setListKhs(Khs khss);
        void printListKhs();
        list<Khs> getListKhs();
    private:
        string nidn;
        string name;
        Khs *khs[1000];
        list<Khs> lKhs;
};



class Prodi {
    int counterr;
    public:
        explicit Prodi(string kode="01",string prodi="Mahasiswa"):code(kode),programs(prodi){};
        Prodi(const Prodi& orig);
        virtual ~Prodi();
        void setMahasiswa(Mahasiswa *mahasiswa);
        void printMhs();
        Mahasiswa *getMahasiswa();
        string getCode();
        string getPrograms();
        void setCounter();
        int getCounter();
        void setListKhs(list<Mahasiswa> lmhs);
        void setListKhs(Mahasiswa mhs);
        void printListKhs();
        list<Mahasiswa> getListKhs();
    private:
        string code;
        string programs;
        Mahasiswa *mahasiswa[1000];
        list<Mahasiswa> lMhs;    
};

class Fakultas {
    int counterrrr;
    public:
        explicit Fakultas(string kode="01",string fakultas="Fakultas"):code(kode),faculty(fakultas){};
        Fakultas(const Fakultas& orig);
        virtual ~Fakultas();
        void setProdi(Prodi *prodi);
        void printProdi();
        Prodi *getProdi();
        string getCode();
        string getFaculty();
        void setCounter();
        int getCounter();
        void setListKhs(list<Prodi> lprodi);
        void setListKhs(Prodi prodi);
        void printListKhs();
        list<Prodi> getListKhs();
    private:
        string code;
        string faculty;
        Prodi *prodi[1000];
        list<Prodi> lProdi;    
};

// make function for class khs
string Khs::getCourse(){
    return course;
}
string Khs::getNim(){
    return nim;
}

string Khs::getGrade(){
    return grade;
}
Khs::~Khs(){
}

void Khs::setCourse(string c){
    course=c;
}

void Khs::setGrade(string g){
    grade=g;
}

// make function for class mahasiswa
// Mahasiswa::Mahasiswa(){
//     counter=0;
// }

Mahasiswa::Mahasiswa(const Mahasiswa& orig){
    this->nim=orig.nim;
    this->name=orig.name;
}

Mahasiswa::~Mahasiswa(){
}



void Mahasiswa::setKhs(Khs *khs){
    this->khs[counter]=khs;
    counter++;
}

void Mahasiswa::printKhs(){
    for(int i=0;i<counter;i++){
        cout<<"Course : "<<khs[i]->getCourse()<<endl;
        cout<<"Grade : "<<khs[i]->getGrade()<<endl;
    }
}

Khs *Mahasiswa::getKhs(){
    return *khs;
}

void Mahasiswa::setName(string n){
    name=n;
}

void Mahasiswa::setNim(string n){
    nim=n;
}
string Mahasiswa::getName(){
    return name;
}

string Mahasiswa::getNim(){
    return nim;
}

void Mahasiswa::setCounter(){
    counter++;
}

int Mahasiswa::getCounter(){
    return counter;
}

void Mahasiswa::setListKhs(list<Khs> lkhs){
    lKhs=lkhs;
}

void Mahasiswa::setListKhs(Khs khss){
    lKhs.push_back(khss);
}

void Mahasiswa::printListKhs(){
    
    for(list<Khs>::iterator ti = lKhs.begin();ti!=lKhs.end();++ti){
        cout<<"Course : "<<ti->getCourse()<<endl;
        cout<<"Grade : "<<ti->getGrade()<<endl;
    }
}

list<Khs> Mahasiswa::getListKhs(){
    return lKhs;
}
// make function for class dosen
Dosen::Dosen(const Dosen& orig){
    this->nidn=orig.nidn;
    this->name=orig.name;
}

Dosen::~Dosen(){
}

void Dosen::setKhs(Khs *khs){
    this->khs[counterrr]=khs;
    counterrr++;
}

void Dosen::printKhs(){
    for(int i=0;i<counterrr;i++){
        cout<<"Course : "<<khs[i]->getCourse()<<endl;
        cout<<"Grade : "<<khs[i]->getGrade()<<endl;
    }
}

Khs *Dosen::getKhs(){
    return *khs;
}

void Dosen::setName(string n){
    name=n;
}

void Dosen::setNim(string n){
    nidn=n;
}

string Dosen::getName(){
    return name;
}

string Dosen::getNim(){
    return nidn;
}

void Dosen::setCounter(){
    counterrr++;
}

int Dosen::getCounter(){
    return counterrr;
}

void Dosen::setListKhs(list<Khs> lkhs){
    lKhs=lkhs;
}

void Dosen::setListKhs(Khs khss){
    lKhs.push_back(khss);
}

void Dosen::printListKhs(){
    
    for(list<Khs>::iterator ti = lKhs.begin();ti!=lKhs.end();++ti){
        cout<<"Course : "<<ti->getCourse()<<endl;
        cout<<"Grade : "<<ti->getGrade()<<endl;
    }
}

list<Khs> Dosen::getListKhs(){
    return lKhs;
}



// make function for class prodi
Prodi::Prodi(const Prodi& orig){
    this->code=orig.code;
    this->programs=orig.programs;
}

Prodi::~Prodi(){
}

void Prodi::setMahasiswa(Mahasiswa *mahasiswa){
    this->mahasiswa[counterr]=mahasiswa;
    counterr++;
}


void Prodi::setCounter(){
    counterr++;
}
int Prodi::getCounter(){
    return counterr;
}

Mahasiswa *Prodi::getMahasiswa(){
    return *mahasiswa;
}
// get mahasiswa

void Prodi::printMhs(){
    for(int i=0;i<counterr;i++){
        cout<<"Nim : "<<mahasiswa[i]->getNim()<<endl;
        cout<<"Name : "<<mahasiswa[i]->getName()<<endl;
    }
}

void Prodi::setListKhs(list<Mahasiswa> lmhs){
    lMhs=lmhs;
}

void Prodi::setListKhs(Mahasiswa mhs){
    lMhs.push_back(mhs);
}

void Prodi::printListKhs(){
    for(list<Mahasiswa>::iterator it=lMhs.begin();it!=lMhs.end();++it){
        cout<<"Nim : "<<it->getNim()<<endl;
        cout<<"Name : "<<it->getName()<<endl;
    }
}

list<Mahasiswa> Prodi::getListKhs(){
    return lMhs;
}

// make function for class fakultas
Fakultas::Fakultas(const Fakultas& orig){
    this->code=orig.code;
    this->faculty=orig.faculty;
}

Fakultas::~Fakultas(){
}

void Fakultas::setProdi(Prodi *prodi){
    this->prodi[counterrrr]=prodi;
    counterrrr++;
}

void Fakultas::setCounter(){
    counterrrr++;
}

int Fakultas::getCounter(){
    return counterrrr;
}

Prodi *Fakultas::getProdi(){
    return *prodi;
}

void Fakultas::printProdi(){
    for(int i=0;i<counterrrr;i++){
        cout<<"Code : "<<prodi[i]->getCode()<<endl;
        cout<<"Programs : "<<prodi[i]->getPrograms()<<endl;
    }
}

void Fakultas::setListKhs(list<Prodi> lprodi){
    lProdi=lprodi;
}

void Fakultas::setListKhs(Prodi prodi){
    lProdi.push_back(prodi);
}

void Fakultas::printListKhs(){
    for(list<Prodi>::iterator it=lProdi.begin();it!=lProdi.end();++it){
        cout<<"Code : "<<it->getCode()<<endl;
        cout<<"Programs : "<<it->getPrograms()<<endl;
    }
}

list<Prodi> Fakultas::getListKhs(){
    return lProdi;
}






// make main function

int main(){
    Khs *khs=new Khs();
    Mahasiswa *mhs=new Mahasiswa();
    Dosen *dsn=new Dosen();
    Prodi *prodi=new Prodi();
    Fakultas *fakultas=new Fakultas();

    int pilih,n,pilih2,cek=0,pilih3,iter;
    string nim,nama,course,grade,nidn,namaDosen,code,programs,faculty;

    vector<Khs> vecKhs;
    vector<Mahasiswa> vecMhs;
    vector<Fakultas> vecFakultas;

    while(true){

    };
    return 0;
}





// int main(){
//     Khs *khs=new Khs();
//     Mahasiswa *mhs=new Mahasiswa();
//     Prodi *pd=new Prodi();

//     int pilih,n,pilih2,cek=0,pilih3,iter;
//     string nim,name,matkul,nilai,code,prodi;

//     vector<Khs> vekkhs;
//     vector<Mahasiswa> vekmhs;

//     while (true){
//         cout<<"1. Input Data Khs"<<endl;
//         cout<<"2. Show Data Khs"<<endl;
//         cout<<"3. Update Data Khs"<<endl;
//         cout<<"4. Delete Data KHS"<<endl;
//         cout<<"5. Exit"<<endl;
//         cout<<"Pilih : ";
//         cin>>pilih;
//         if(pilih==1){
//             cout<<"1. Input Data Mahasiswa + khs"<<endl;
//             cout<<"2. Input Data Khs saja"<<endl;
//             cout<<"Pilih : ";
//             cin>>pilih3;
//             if(pilih3==1){
//                 // input data mahasiswa , nim, name and for  khs matkul and nilai
//                 cout<<"Input Nim : ";
//                 cin>>nim;
//                 cout<<"Input Name : ";
//                 cin>>name;
//                 // mengecek data
//                 while(cek < vekmhs.size()){
//                     if(vekmhs[cek].getNim()==nim){
//                         cek = 100;
//                         break;
//                     };
//                     cek++;
//                 };
//                 if(cek ==100){
//                         cek = 0;
//                         cout<<"\n--Data Sudah Ada--\n"<<endl;
//                 }else{
//                     mhs = new Mahasiswa(nim,name);
//                     vekmhs.push_back(*mhs);
//                     cout << "Input Data Mahasiswa Berhasil" << endl;
//                     cout << "Input semester : ";
//                     cin >> code;
//                     cout << "Input Prodi : ";
//                     cin >> prodi;
//                     khs = new Khs(nim,code,prodi);
//                     vekkhs.push_back(*khs);
//                     cout << "Input Berapa Jumlah KHS : ";   
//                     cin >> n;
//                     for(int i=0;i<n;i++){
//                         cout<<"Input Matkul : ";
//                         cin>>matkul;
//                         cout<<"Input Nilai : ";
//                         cin>>nilai;
//                         khs = new Khs(nim,matkul,nilai);
//                         vekkhs.push_back(*khs);
//                     }
//                     cout << "Input Data KHS Berhasil \n" << endl;
//                 }
//             }else if(pilih3==2){
//                 cout << "input Nim : ";
//                 cin >> nim;
//                 cout << "Input Berapa Jumlah KHS : ";
//                 cin >> n;
//                 for(int i=0;i<n;i++){
//                     cout<<"Input Matkul : ";
//                     cin>>matkul;
//                     cout<<"Input Nilai : ";
//                     cin>>nilai;
//                     khs = new Khs(nim,matkul,nilai);
//                     vekkhs.push_back(*khs);
//                 }
//                 cout << "Input Data KHS Berhasil \n" << endl;
//             }else{
//                 cout << "\nPilihan Tidak Ada\n" << endl;
//             }
                   
//         }else if(pilih==2){
//             cout<<"\nData Mahasiswa : "<<endl;
//             if(vekmhs.size()==0){
//                 cout<<"Data Mahasiswa Kosong \n"<<endl;
//             }else{
//                 // print data khs sesuai mahasiswa
//                 for(int i=0;i<vekmhs.size();i++){
//                     cout<<"Nim : "<<vekmhs[i].getNim()<<endl;
//                     cout<<"Name : "<<vekmhs[i].getName()<<endl;
//                     for(int j=0;j<vekkhs.size();j++){
//                         if(vekmhs[i].getNim()==vekkhs[j].getNim()){
//                             if(j == 0){                            
//                                 cout << "Semester : " << vekkhs[j].getCourse() << endl;
//                                 cout << "Prodi : " << vekkhs[j].getGrade() << endl;
//                                 cout <<'\n';
//                             }else{
//                             cout<<"Matkul : "<<vekkhs[j].getCourse()<<endl;
//                             cout<<"Nilai : "<<vekkhs[j].getGrade()<<endl;
//                             }            
//                         }
//                     }
//                     cout << "-----------------------------------" << endl;
//                 }
//             }
             
//         }else if(pilih==3){
//             if(vekmhs.size()==0){
//                 cout<<"Data Mahasiswa Kosong \n"<<endl;
//             }else{
//                 cout << "1. Update Data Mahasiswa" << endl;
//                 cout << "2. Update Data KHS" << endl;
//                 cout << "Pilih : ";
//                 cin >> pilih2;
//                 if(pilih2==1){
//                     cout << "Input Nim : ";
//                     cin >> nim;
//                     while(cek < vekmhs.size()){
//                         if(vekmhs[cek].getNim()==nim){
//                             iter = cek;
//                             cek = 100;
//                             break;
//                         };
//                         cek++;
//                     };
//                     if(cek ==100){
//                         cek = 0;
//                         cout <<"Anda Dapat Merubah Nama Mahasiswa" << endl;
//                         cout << "Input Name : ";
//                         cin >> name;
//                         vekmhs[iter].setName(name);
//                         cout << "Update Data Mahasiswa Berhasil \n" << endl;
//                     }else{
//                         cout << "\nData Mahasiswa Tidak Ada\n" << endl;
//                     }
//                 }else if(pilih2==2){
//                     cout << "Input Nim : ";
//                     cin >> nim;
//                     while(cek < vekmhs.size()){
//                         if(vekmhs[cek].getNim()==nim){
//                             iter = cek;
//                             cek = 100;
//                             break;
//                         };
//                         cek++;
//                     };
//                     if(cek ==100){
//                         cek = 0;
//                         cout << "Input Matkul : ";
//                         cin >> matkul;
//                         for(vector<Khs>::iterator it=vekkhs.begin();it!=vekkhs.end();++it){
//                             if(vekmhs[iter].getNim()==it->getNim()){
//                                 if(it->getCourse()==matkul){
//                                     cout << "Input Nilai : ";
//                                     cin >> nilai;
//                                     it->setGrade(nilai);
//                                     cout << "Update Data KHS Berhasil \n" << endl;
//                                 }
//                             }
//                         }
//                     }else{
//                         cout << "\nData Matkul Tidak Ada\n" << endl;
//                     }
//                 }else{
//                     cout << "\nPilihan Tidak Ada\n" << endl;
//                 }
//             }
//         }else if(pilih==4){
//             if(vekmhs.size()==0){
//                 cout<<"Data Mahasiswa Kosong \n"<<endl;
//             }else{
//                 cout << "1. Delete Data Mahasiswa" << endl;
//                 cout << "2. Delete Data KHS" << endl;
//                 cout << "Pilih : ";
//                 cin >> pilih2;
//                 if(pilih2==1){
//                     cout << "Input Nim : ";
//                     cin >> nim;
//                     while(cek < vekmhs.size()){
//                         if(vekmhs[cek].getNim()==nim){
//                             iter = cek;
//                             cek = 100;
//                             break;
//                         };
//                         cek++;
//                     };
//                     if(cek ==100){
//                         cek = 0;
//                         vekmhs.erase(vekmhs.begin()+iter);
//                         while (cek < vekkhs.size()){
//                             if(vekkhs[cek].getNim()==nim){
//                                 vekkhs.erase(vekkhs.begin()+cek);
//                             }
//                             cek++;
//                         }
//                         cout << "Delete Data Mahasiswa Berhasil \n" << endl;
//                     }else{
//                         cout << "\nData Mahasiswa Tidak Ada\n" << endl;
//                     }
//                 }else if(pilih2==2){
//                     cout << "Input Nim : ";
//                     cin >> nim;
//                     while(cek < vekmhs.size()){
//                         if(vekmhs[cek].getNim()==nim){
//                             iter = cek;
//                             cek = 100;
//                             break;
//                         };
//                         cek++;
//                     };
//                     if(cek ==100){
//                         cek = 0;
//                         cout << "Input Matkul : ";
//                         cin >> matkul;
//                         while(cek < vekkhs.size()){
//                             if(vekkhs[cek].getCourse()==matkul){
//                                 iter = cek;
//                                 cek = 100;
//                                 break;
//                             };
//                             cek++;
//                         };
//                         if(cek ==100){
//                             cek = 0;
//                             vekkhs.erase(vekkhs.begin()+iter);
//                             cout << "Delete Data KHS Berhasil \n" << endl;
//                         }else{
//                             cout << "\nData Matkul Tidak Ada\n" << endl;
//                         }
//                     }else{
//                         cout << "\nData Mahasiswa Tidak Ada\n" << endl;
//                     }
//                 }else{
//                     cout << "\nPilihan Tidak Ada\n" << endl;
//                 }
//             }
//         }else if(pilih==5){
//             break;
//         }else{
//             cout<<"Pilihan tidak ada"<<endl;
//             break;
//         }
//     };

//     return 0;

// }


