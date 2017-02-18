POINT operator *(double d, const POINT & P)
{
  POINT Q(dim);
  for (int i=0;i<dim;i++)
  { Q.pCor[i] = P.pCor[i]*d; }
  return Q;
}
