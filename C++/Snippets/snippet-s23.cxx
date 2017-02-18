#include <fstream>
#include <string>
using namespace std;
{
  fstream sortie("fichier_sortie"); //creation
  double pi = 3.1415926;
  int i = 3;
  string msg="impression_:\n";
  sortie<<msg<<pi<<","<<i; //ecriture dans le fichier
  sortie.close();          //fermeture du fichier
}
