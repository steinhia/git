class POINT
{
  public :
    ...
    POINT & operator *= (double d); //produit par un double
};
POINT & POINT::operator *= (double d)
{
  for(int i=0;i<dim;i++)
  {
    pCor[i]*=d;
    return *this;
  }
}
