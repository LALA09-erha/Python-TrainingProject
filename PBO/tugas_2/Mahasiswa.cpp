/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Mahasiswa.cpp
 * Author: LENOVO
 * 
 * Created on September 19, 2022, 10:07 AM
 */

#include "Mahasiswa.h"

Mahasiswa::Mahasiswa(){
    this->counter=0;
}
Mahasiswa::Mahasiswa(const Mahasiswa& orig) {
    this->nim=orig.nim;
    this->name=orig.name;
}

Mahasiswa::~Mahasiswa() {
    //delete this;
}


string Mahasiswa::getName(){
    return this->name;
}
string Mahasiswa::getNim(){
    return this->nim;
}

void Mahasiswa::setKhs(Khs *vkhs){
    cout<<"set Mahasiswa:"<<this->getCounter()<<endl;
    this->khs[this->getCounter()]=vkhs;
    cout<<this->khs[this->getCounter()]->getCourse()<<endl;
    cout<<this->khs[this->getCounter()]->getGrade()<<endl;
    this->setCounter();
}

void Mahasiswa::setCounter(){
    this->counter++;
}
void Mahasiswa::setName( string n){
    this->name=n;
    
}
void Mahasiswa::setNim( string n){
    this->nim=n;
    
}
int Mahasiswa::getCounter(){
    return this->counter;
}

void Mahasiswa::printKhs(){
    cout<<"**************"<<this->getCounter()<<"******************"<<endl;
 //   cout<<"Data Mahasiswa:"<<this->getNim()<<"|"<<this->name<<endl;
    //cout<<"Data Mahasiswa:"<<this->nama<<"|"<<endl;
    cout<<"========================================================"<<endl;
    for (int i=0;i<this->getCounter();i++) {
            cout<<"NO."<<i<<endl;
            cout<<"Mata Kuliah: "<<this->khs[i]->course<<endl;
            cout<<"Nilai: "<<this->khs[i]->grade<<endl;
            cout<<"-------------------------------------"<<endl;
        }  
}

void Mahasiswa::setListKhs(list<Khs> vKhs){
    this->lKhs=vKhs;
}
void Mahasiswa::setListKhs(Khs vkhs){
    this->lKhs.push_back(vkhs);
}

list<Khs> Mahasiswa::getListKhs(){
    return  this->lKhs;
}

void Mahasiswa::printListKhs(){
    for( auto x :this->getListKhs()){ 
      cout<<"  -" <<x.getCourse() << ":";
      cout<< x.getGrade() << "\n";
    }
}


