class POINT{...};
ostream & operator <<(ostream &OPut, const POINT &P)
{
  Out<<"Point : ";
  for(int i=0;i<P.dim;i++)
  { Out<<P(i)<<" " ; }
  Out<<endl;
  return Out;
}
istream & operator >>(istream &in, const POINT &P)
{
  for(int i=0;i<P.dim;i++)
  { In>>P(i); }
}
