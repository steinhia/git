//calcul de la fonction et de sa derivee
double fonc(double x, int der =0)
{
  switch(der)
  {
    case 0 : ... //calcul de la valeur
    case 1 : ... //calcul de la derivee
  }
}
//appel de la fonction
int main()
{
  double f,df;
  f = fonc(0);    //calcul de la valeur en 0
  df = fonc(0,1); //calcul de la derivee en 0
  ...
}
