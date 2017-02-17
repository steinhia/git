#include <iostream>
#include "Dvector.h"
#include <cstdlib> 
#include <stdio.h>
#include <fstream>
#include <assert.h>
 
using namespace std;

double* Dvector::vector() const{
  return vecteur;
}

int Dvector::size() const {
  return taille;
}

Dvector::Dvector() {
  vecteur=0;
  taille=0;
}

Dvector::Dvector(int taille, double val) {
  //vecteur=0;
  /*  if(vecteur != 0) {
    delete [] vecteur;
    }*/
  vecteur = new double[taille];
  for(int i=0; i<taille; i++) {
  vecteur[i]=val;
  }
  this->taille=taille;
}

Dvector::Dvector(const Dvector & vect)
{
  taille=vect.size();
  if(taille==0) {
    return;
  }
  vecteur = new double[taille];
  for(int i=0; i<taille; i++) {
    vecteur[i]=vect.vecteur[i];
  }
}

// problème de taille trop grande!!
Dvector::Dvector(std::string str) {
  /*  vecteur = NULL;
  ifstream fichier(str.c_str(), ios::in);
  if (fichier) {
    string ligne;
    int taille=0;
    while(std::getline(fichier,ligne)) {
      ++taille;
    }
  vecteur = new double[taille];
  ifstream fichier(str.c_str(), ios::in);
  int i=0;
  while(std::getline(fichier,ligne)) {
      vecteur[i]=strtod(ligne.c_str(),NULL);
      i++;
    }
  }
  this->taille=taille;
  this->vecteur=vecteur;*/
}



void Dvector::fillRandomly(){
  for(int i=0; i<this->taille; i++) {
    this->vecteur[i]=rand()/(double)RAND_MAX;
  }
}

void Dvector::display(std::ostream& str) {
  for (int i=0; i<taille; i++) {
     str << this->vecteur[i] << std::endl; 
  }
}

// opérateur d'accession
double& Dvector::operator()(const int i) const {
  assert(i>=0 && i<taille);
  return vecteur[i];
}

Dvector& Dvector::operator+=(const double &a) {
		for(int i = 0; i<this->size(); i++)
			this->vecteur[i] += a;
		return *this;
}

Dvector& Dvector::operator-=(const double &a) {
		for(int i = 0; i<this->size(); i++)
			this->vecteur[i] -= a;
		return *this;
}

Dvector& Dvector::operator*=(const double &a) {
		for(int i = 0; i<this->size(); i++)
			this->vecteur[i] *= a;
		return *this;
}

Dvector& Dvector::operator/=(const double &a) {
  if(a==0)
    exit(-1);
		for(int i = 0; i<this->size(); i++)
			this->vecteur[i] /= a;
		return *this;
}

Dvector operator+(const Dvector & vect, const double &a) {
  Dvector V(vect);
  V.display(std::cout);
  for(int i=0; i<vect.size(); i++) {
    V(i)=vect(i)+a;
  }
  return V;
}

Dvector operator-(const Dvector & vect, const double & a) {
  Dvector V(vect);
  for(int i=0; i<vect.size(); i++) {
    V(i)=vect(i)-a;
  }
  return V;
}

Dvector operator*(const Dvector & vect, const double & a) {
  Dvector V(vect);
  for(int i=0; i<vect.size(); i++) {
    V(i)=vect(i)*a;
  }
  return V;
}

Dvector operator/(const Dvector & vect, const double & a) {
  Dvector V(vect);
  for(int i=0; i<vect.size(); i++) {
    V(i)=vect(i)/a;
  }
  return V;
}

Dvector operator+(const Dvector & v1, const Dvector & v2) {
  if(v1.size()!=v2.size())
    exit(-1);
  Dvector V(v1);
  for(int i=0; i<v1.size(); i++) {
    V(i)=v1(i)+v2(i);
  }
  return V;
}

Dvector operator-(const Dvector & v1, const Dvector & v2) {
  if(v1.size()!=v2.size())
    exit(-1);
  Dvector V(v1);
  for(int i=0; i<v1.size(); i++) {
    V(i)=v1(i)+v2(i);
  }
  return V;
}

Dvector operator-(const Dvector & v1) {
  Dvector V(v1);
  for(int i=0; i<v1.size(); i++) {
    V(i)=-v1(i);
  }
  return V;
}

Dvector::~Dvector() {
  // désalloue le vecteur
  if (vecteur != NULL)
    delete [] vecteur;
}

int main() {
  // Redéfinition des variables ??
  Dvector vect(3,2);
  vect.display(std::cout);
Dvector x(3,5);  vect = x;


  //Dvector vecteur=Dvector();
  /*Dvector vect = Dvector(3,2);
  //vect = Dvector(3,2);
 
  */
  //delete vect;
}
