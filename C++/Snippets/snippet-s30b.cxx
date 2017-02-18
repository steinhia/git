class vect
{
  public :
    double *val; //tableau de valeurs
    ...
      double & operator()(int i){return val[i+1];}
    double & operator[](int i){return val[i];}
}
