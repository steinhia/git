#include "Dvector.h"
#include <string>       // std::string
#include <iostream>     // std::cout
#include <sstream>      // std::stringstream
#include <assert.h>

int main()
{	


	// Test du constructeur par défaut
	cout<<"Constructeur par défaut:"<<endl;
	Dvector v1;
	assert(v1.size() == 0);
	std::stringstream str;
	v1.display(str);
	assert(str.str() == "");
	cout<<"OK"<<endl;
	str.str("");
	
	// Test du constructeur classique
	cout<<"Constructeur classique:"<<endl;
	Dvector v2(4,3.22);
	assert(v2.size() == 4);
	v2.display(str);
	assert(str.str() == "3.22\n3.22\n3.22\n3.22\n");
	cout<<"OK"<<endl;
	str.str("");


	// Test du constructeur par copie
	cout<<"Constructeur par copie:"<<endl;
	Dvector v3(v2);
	assert(v3.size() == v2.size());
	v3.display(str);
	assert(str.str() == "3.22\n3.22\n3.22\n3.22\n");
	cout<<"OK"<<endl;
	str.str("");
	
	// Test du constructeur par fichier
	cout<<"Constructeur par fichier:"<<endl;
	Dvector v4("./tests/tp1_test1.txt");
	v4.display(str);
	assert(str.str() == "0.162182\n0.794285\n0.311215\n0.528533\n0.165649\n0.601982\n0.262971\n0.654079\n0.689214\n0.748152\n");
	cout<<"OK"<<endl;
	str.str("");

	// Test de la surcharge de =
	cout<<"Surcharge ="<<endl;
	Dvector v5 = v4;
	assert(v3.size() == v2.size());
	v5.display(str);
	assert(str.str() == "0.162182\n0.794285\n0.311215\n0.528533\n0.165649\n0.601982\n0.262971\n0.654079\n0.689214\n0.748152\n");
	cout<<"OK"<<endl;
	str.str("");

	// Test de += 
	cout<<"Surcharge +="<<endl;
	Dvector v6(3,2.22);
	v6 += 1;
	v6.display(str);
	assert(str.str() == "3.22\n3.22\n3.22\n");
	cout<<"v6 += 1 : OK"<<endl;
	str.str("");
	v6 = v2;
	v6 += v2;
	v6.display(str);
	assert(str.str() == "6.44\n6.44\n6.44\n6.44\n");
	cout<<"v6 += v2 : OK"<<endl;
	str.str("");

	// Test de -= 
	cout<<"Surcharge -="<<endl;
	v6 = Dvector(3,2.22);
	v6 -= 1;
	v6.display(str);
	assert(str.str() == "1.22\n1.22\n1.22\n");
	cout<<"v6 -= 1 : OK"<<endl;
	str.str("");
	v6 = Dvector(4,7.44);
	v2 = Dvector(4,1);
	v6 -= v2;
	v6.display(str);
	assert(str.str() == "6.44\n6.44\n6.44\n6.44\n");
	cout<<"v6 -= v2 : OK"<<endl;
	str.str("");
	
	// Test de *=
	cout<<"Surcharge *="<<endl;
	v6 = Dvector(3,2.22);
	v6 *= 2;
	v6.display(str);
	assert(str.str() == "4.44\n4.44\n4.44\n");
	cout<<"v6 *= 2 : OK"<<endl;
	str.str("");

	// Test de /=
	cout<<"Surcharge /="<<endl;
	v6 = Dvector(3,2.22);
	v6 /= 2;
	v6.display(str);
	assert(str.str() == "1.11\n1.11\n1.11\n");
	cout<<"v6 /= 2 : OK"<<endl;
	str.str("");

	// Test de ==
	cout<<"Surcharge == et !="<<endl;
	v5 = v6;
	assert(v5 == v6);
	cout<< "v5 == v6 : OK"<<endl;
	v5 -= 1;
	assert(v5 != v6);
	cout <<"v5 != v6 : OK"<<endl;
	
	// Test de +
	cout << "test de +"<<endl;
	v5 = Dvector(3,0);
	v1 = Dvector(3,1);
	assert(v1 == v5 + 1);
	assert(v1 == 1 + v5);
	v2 = Dvector(3,1);
	assert(v2 == v1 + v5);
	cout<< "+ : OK "<<endl;
	
	// Test de -
	cout << "test de -"<<endl;
	v5 = Dvector(3,0);
	v1 = Dvector(3,-1);
	assert(v1 == v5 - 1);
	assert(v1 == -1 - v5);
	v2 = Dvector(3,-1);
	assert(v2 == v1 - v5);
	cout<< "- : OK "<<endl;

	//Test de *
	cout << "test de *"<<endl;
	v5 = Dvector(3,2);
	v1 = Dvector(3,2);
	assert(v1 == v5 * 1);
	assert(v1 == 1 * v5);
	cout<< "* : OK "<<endl;

	//test de /
	cout << "test de /"<<endl;
	v5 = Dvector(3,2);
	v1 = Dvector(3,1);
	v2 = Dvector(3,0.5);
	assert(v5 == v5 / 1);
	assert(v2 == 1 / v5);
	cout<< "/ : OK "<<endl;
	
	// test de - unaire
	cout << "test de - unaire" << endl;
	v1 = Dvector(3,1);
	v2 = Dvector(3,-1);
	assert(v1 == -v2);
	cout << "- unaire : OK"<< endl;	
	
	// test de <<
	
	cout << "test de << et >>" << endl;
	str.str("");
	str << v1;
	assert(str.str() == "1 1 1 ");
	cout << "<< : OK"<<endl;
	str >> v2;
	assert(v1==v2);
	cout << ">> : OK"<<endl;
	
	v1.resize(2,1);
	cout << "resize down..." <<endl;
	assert(v1 == Dvector(2,1));
	cout << "resize up..." << endl;
	v2.resize(4,1);
	assert(v2 == Dvector(4,1));
	cout << "resize : OK" << endl;
}


