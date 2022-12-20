/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: LENOVO
 *
 * Created on September 19, 2022, 2:10 PM
 */

#include <cstdlib>
#include"Khs.h"
#include"Mahasiswa.h"
#include "Prodi.h"
using namespace std;

/*
 * 
 */
int main(int argc, char** argv) {
    
    
    Khs *khs=new Khs();
    Mahasiswa *mhs=new Mahasiswa();
    //Prodi *prodi = new Prodi();
    //prodi->setMahasiswa(mhs);
    mhs->setName("ADI");
    mhs->setNim("01");
    cout<<mhs->getName()<<endl;
    mhs->setKhs(khs);
    khs=new Khs("SD","B");
    mhs->setKhs(khs);
    khs=new Khs("ALPRO","C");
    mhs->setKhs(khs);
    mhs->printKhs();
    
    mhs=new Mahasiswa();
    //prodi->setMahasiswa(mhs2);
    mhs->setName("BUDI");
    mhs->setNim("02");
    khs=new Khs("SD","A");
    mhs->setKhs(khs);
    khs=new Khs("ALPRO","B");
    mhs->setKhs(khs);
    mhs->printKhs();
    
   
    // set object template to set as a copy
    Khs const_khs;
    const_khs.setCourse("pbo 2022-1");
    const_khs.setGrade("A");
    
    //test copy to new KHS constructor, Const_KHS is a Copy constant
    Khs *myKhs=new Khs(const_khs);
    cout<<"New Course: "<<myKhs->getCourse()<<endl;
    
    //test list of object
    list<Khs> dataset;
    
    cout<<"test list:"<<endl;
    dataset.push_back(const_khs);
    const_khs.setCourse("alpro 2022-1");
    const_khs.setGrade("B");
    dataset.push_back(const_khs);
    
    //test casting set multi object
    mhs->setListKhs(dataset);
    
    const_khs.setCourse("Struktur Data 2022-1");
    const_khs.setGrade("C");
    //test casting single object within overloading function
    mhs->setListKhs(const_khs);
    
    cout<<mhs->getNim()<<":"<<mhs->getName()<<"\n";
    //  test print uses innerloop inside object aggregation MAHASISWA->KHS, only for C++>11
    mhs->printListKhs();
    return 0;
}

