/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Khs.cpp
 * Author: LENOVO
 * 
 * Created on September 19, 2022, 10:08 AM
 */

#include "Khs.h"


Khs::Khs(const Khs& orig) {
    this->course=orig.course;
    this->grade=orig.grade;
}

Khs::~Khs() {
}

string Khs::getCourse(){
    return this->course;
}
string Khs::getGrade(){
    return this->grade;
}

void Khs::setCourse(string c){
    this->course=c;
}
void Khs::setGrade(string g){
    this->grade=g;
}
