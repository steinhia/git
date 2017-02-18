#include "Dvector.h"
#include <time.h>  
#include <stdlib.h> 
#include <fstream>
#include <iostream>
#include <vector>
#include "string.h"
using namespace std;

// Constructeur par défaut
Dvector::Dvector(){
	//cout<<"appel au Constructeur par défaut"<<endl;
	nDim = 0;
	coord = 0;
}

// Constructeur classique
Dvector::Dvector(int dim, double val){
	coord = 0;
	//cout<<"appel au Constructeur classique"<<endl;
	nDim = dim;
	if(coord != 0)
		delete [] coord;
	coord = new double[dim];
	for(int i = 0; i<dim ; i++){
		coord[i] = val;
	}
}

// Constructeur par copie
Dvector::Dvector(const Dvector & V){
	//cout<<"appel au constructeur par copie"<<endl;	
	if(V.nDim == 0) {
		nDim = 0;
		return;
	}
	nDim = V.nDim;
	coord = new double[nDim];
	for(int i = 0; i<V.nDim; i++){
		coord[i] = V.coord[i];
	}
}

// Constructeur à partir d'un fichier 
Dvector::Dvector(string nameFile){
	//cout<<"appel au constructeur par fichier"<<endl;
	ifstream file(nameFile.data());
	if(file){
		nDim = 0;
		double temp;
			while(!file.eof()){
				file >> temp;
				nDim ++;
			}
		nDim --;
		coord = new double[nDim];
		ifstream fileb(nameFile.data());
		int i = 0;
		while(!fileb.eof()){
			fileb >> temp;
			if(i != nDim)
			coord[i] = temp;
			i++;
		}
		fileb.close();
		file.close();
	} else {
		nDim = 0;
		return;
	}
}

// Destructeur
Dvector::~Dvector(){
	//cout<<"appel au destructeur"<<endl;
		delete [] coord;
}

// Affiche le contenu du Dvector
void Dvector::display (std::ostream& str) const{
	for(int i = 0; i<this -> nDim; i++){
		str << this -> coord[i] << endl;
	}
}

// Getteur de size
int Dvector::size() const {
	return this -> nDim;
}

// Remplit aléatoirement le vecteur
void Dvector::fillRandomly(){
	srand (time(NULL));
}

double &  Dvector::operator () (int i){
		return(this->coord[i]);
}

double Dvector::operator() (int i) const{
		double x = (this->coord[i]);
		return x;
}

Dvector & Dvector::operator=(const Dvector &D){
	nDim = D.size();
	delete [] coord;
	coord = new double[nDim];
	memcpy(coord, D.coord, nDim * sizeof(double));
	return *this;
}
/*
Dvector & Dvector::operator=(const Dvector &D){
	nDim = D.size();
	delete [] coord;
	coord = new double[nDim];
	for(int i = 0; i<nDim; i++){
		coord[i] = D(i);
	}
	return *this;
}
*/
void Dvector::resize(const int & size, const double & val){
	if (size <= this -> size()){
		
	} else {
		double * coordbis;
		coordbis = new double[size];
		memcpy(coordbis, coord, nDim * sizeof(double));
		for (int i = nDim; i<size; i++){
			coordbis[i] = val;
		}
		delete [] coord;
		coord = coordbis;
	}
	nDim = size;
}
// Extern

Dvector operator+(const Dvector &V,const Dvector &Q){
	if(V.size() != Q.size())
		exit(-1); // incompatible length
	Dvector R(Q.size());
	for(int i = 0; i< R.size(); i++)
		R(i) = V(i) + Q(i);
	return R;
}

Dvector operator+(const double &d,const Dvector &Q){
	Dvector R(Q.size());
	for(int i = 0; i< R.size(); i++)
		R(i) = d + Q(i);
	return R;
}

Dvector operator+(const Dvector &Q,const double &d){
	Dvector R(Q.size());
	for(int i = 0; i< R.size(); i++)
		R(i) = d + Q(i);
	return R;
}


 Dvector operator-(const Dvector &Q,const Dvector &V){
	if(V.size() != Q.size())
		exit(-1); // incompatible length
	Dvector R(Q.size());
	for(int i = 0; i< R.size(); i++)
		R(i) = Q(i) - V(i);
	return R;
}


 Dvector operator-(const double &d,const Dvector &Q){
	Dvector R(Q.size());
	for(int i = 0; i< R.size(); i++)
		R(i) = d - Q(i);
	return R;
 }

 Dvector operator-(const Dvector &Q,const double &d){
	Dvector R(Q.size());
	for(int i = 0; i< R.size(); i++)
		R(i) = Q(i) - d;
	return R;
 }


 Dvector operator*(const Dvector &Q,const double &d){
	Dvector R(Q.size());
	for(int i = 0; i< R.size(); i++)
		R(i) = Q(i) * d;
	return R;
 }

 Dvector operator/(const Dvector &Q,const double &d){
	Dvector R(Q.size());
	for(int i = 0; i< R.size(); i++)
		R(i) = Q(i) / d;
	return R;
 }

 Dvector operator*(const double &d,const Dvector &Q){
 	Dvector R(Q.size());
	for(int i = 0; i< R.size(); i++)
		R(i) = Q(i) * d;
	return R;
 }
 
Dvector operator/(const double &d,const Dvector &Q){
 	Dvector R(Q.size());
	for(int i = 0; i< R.size(); i++)
		R(i) = d/Q(i);
	return R;

}
 Dvector operator-(const Dvector &Q){
	Dvector R(Q.size());
	for(int i = 0; i< R.size(); i++)
		R(i) = -Q(i);
	return R;
 }

	 Dvector & Dvector::operator += (const Dvector &Q){
		for(int i = 0; i<this->size(); i++)
			this->coord[i] += Q(i);
		return *this;
	 }

	 Dvector & Dvector::operator -= (const Dvector &Q){
		for(int i = 0; i<this->size(); i++)
			this->coord[i] -= Q(i);
		return *this;
	 }
	 
	Dvector & Dvector::operator += (const double &Q){
		for(int i = 0; i<this->size(); i++)
			this->coord[i] += Q;
		return *this;
	 }

	 Dvector & Dvector::operator -= (const double &d){
		for(int i = 0; i<this->size(); i++)
			this->coord[i] -= d;
		return *this;
	 }
	 Dvector & Dvector::operator *= (const double &d){
		for(int i = 0; i<this->size(); i++)
			this->coord[i] *= d;
		return *this;

	 }
	 Dvector & Dvector::operator /= (const double &d){
		for(int i = 0; i<this->size(); i++)
			this->coord[i] /= d;
		return *this;

	 }

	 bool Dvector::operator == (const Dvector &Q){
			 if (this->size() != Q.size())
			return false;		
		 bool b = true;
		for (int i = 0; i<this->size();i++){
			b = b && (this->coord[i]==Q(i));
		}
		return b;
	 }
	 bool Dvector::operator != (const Dvector &Q){
		 if (this->size() != Q.size())
			return true;	 
		 for (int i = 0; i<this->size();i++){
				if(this->coord[i]!=Q(i))
					return true;
		}
		return false;
	 }
ostream & operator <<(ostream & out,const Dvector &Q){
	for(int i = 0; i<Q.size(); i++)
		out << Q(i)<< " ";
	return out;
}

istream & operator >>(istream &in, Dvector &Q){
	for(int i=0;i<Q.size();i++)
		in>>Q(i);
	return in;
}
