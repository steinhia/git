class POINT
{
  public :
    ...
      double& operator()( int i);
    POINT & operator += (const POINT &);
    POINT & operator -= (const POINT &);
    POINT & operator *= (const POINT &);
    POINT & operator /= (const Point &);
    bool operator == (const POINT &);
    bool operator != (const POINT &);
};

POINT operator+(const POINT &,const POINT &);
POINT operator-(const POINT &,const POINT &);
POINT operator*(const POINT &,const double &);
POINT operator/(const POINT &,const double &);
POINT operator*(const double &,const POINT &);
POINT operator/(const double &,const POINT &);
ostream & operator <<(ostream &,const POINT &);
istream & operator >>(istream &,const POINT &);
