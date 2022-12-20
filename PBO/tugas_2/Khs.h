/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Khs.h
 * Author: LENOVO
 *
 * Created on September 19, 2022, 10:08 AM
 */

#ifndef KHS_H
#define KHS_H
#include<iostream>
using namespace std;
class Khs {
public:
    explicit Khs(string mk="oop", string nilai="A"):course(mk),grade(nilai){};
    Khs(const Khs& orig);
    virtual ~Khs();
    friend class Mahasiswa;
    string getCourse();
    string getGrade();
    void setCourse(string c);
    void setGrade(string g);
private:
    
    string course;
    string grade;
};

#endif /* KHS_H */

