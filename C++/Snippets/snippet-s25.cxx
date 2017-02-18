class POINT
{
  public :
    int dim;
    double *pCor;
    POINT(int d, double v=0);    //constructeur (dimension, val)
    POINT(const POINT &P);       //constructeur par copie
    POINT operator * (double d); //produit par un double
};

POINT POINT::operator *(double d)
{
  POINT Q(dim);
  for(int i=0;i<dim;i++)
  {
    Q.pCor[i] = pCor[i]*d;
  }
  return Q;
}
