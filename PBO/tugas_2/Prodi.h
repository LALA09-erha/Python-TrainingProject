/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Prodi.h
 * Author: LENOVO
 *
 * Created on September 19, 2022, 2:14 PM
 */

#ifndef PRODI_H
#define PRODI_H
#include<iostream>
#include"Mahasiswa.h"
using namespace std;

class Prodi {
public:
//    Prodi();
    explicit Prodi(string kode="01",string prodi="Mahasiswa"):code(kode),programs(prodi){};
    Prodi(const Prodi& orig);
    virtual ~Prodi();
    void setMahasiswa(Mahasiswa *mhs);
    void printMhs();
    Khs *getMahasiswa();
    int getCounter();
    int counter;
private:
    string code;
    string programs;
    Mahasiswa *mahasiswa[];
};

#endif /* PRODI_H */

