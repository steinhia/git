POINT & POINT::operator+= (const Point &Q)
{
  if(dim!=Q.dim)
  { exit(-1); // dimension incompatible }
  POINT &P=*this; // alias sur this
  for(int i=0;i<dim;i++)
  { P(i)+=Q(i); }
  return P;
}

POINT operator+(const Point P &,const Point &Q)
{
  POINT R(P); // R initialise avec P
  R+=Q; // addition interne
  return R; // retourne l'objet R
}

bool POINT::operator == (const Point &Q){...}
bool POINT::operator != (const Point &Q){return ! (*this == Q);}
