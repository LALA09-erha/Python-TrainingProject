/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Prodi.cpp
 * Author: LENOVO
 * 
 * Created on September 19, 2022, 2:14 PM
 */

#include "Prodi.h"



Prodi::Prodi(const Prodi& orig) {
}

Prodi::~Prodi() {
}

void Prodi::setMahasiswa(Mahasiswa *mhs){
    mahasiswa[this->counter]=mhs;
}

void Prodi::printMhs(){
    cout<<"**************"<<this->getCounter()<<"******************"<<endl;
    //cout<<"Data Mahasiswa:"<<this->getNim()<<"|"<<this->name<<endl;
    //cout<<"Data Mahasiswa:"<<this->nama<<"|"<<endl;
    cout<<"========================================================"<<endl;
    for (int i=0;i<this->getCounter();i++) {
            cout<<"NO."<<i<<endl;
           // cout<<"Mahasiswa: "<<this[i].get<<endl;
           // cout<<"Nilai: "<<this->khs[i]->grade<<endl;
            cout<<"-------------------------------------"<<endl;
        }  
}
int Prodi::getCounter(){
    return this->counter;
}