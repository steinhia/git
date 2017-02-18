void function ajoute1(double * x) {*x=(*x) + 1;};

int main()
{
  double x = -1;
  ajoute1(&x); /*transmission du pointeur de x*/
}
