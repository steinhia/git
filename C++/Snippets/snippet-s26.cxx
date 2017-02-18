POINT operator *(double d, const POINT & P)
{
  POINT Q(dim);
  for (int i=0;i<dim;i++)
  {
    Q.pCor[i] = P.pCor[i]*d;
  }
  return Q;
}

int main()
{
  POINT M(3);
  POINT P=M*2; // surcharge de * interne
  POINT Q=3*M; // surcharge de * externe
}
