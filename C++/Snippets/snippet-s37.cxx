class MATRICE //  classe MATRICE
{
  ...
};

class COMBINAISON // pointeurs matrice et coefficients
{
  public:
    int nb_matrice;
    MATRICE **liste_matrice;
    double *liste_coefficients;
    ...
}

COMBINAISON & operator*(double, const MATRICE &);
COMBINAISON & operator*(const MATRICE &, double);
COMBINAISON & operator+(const MATRICE &, const MATRICE &);
COMBINAISON & operator-(const MATRICE &, const MATRICE &);
COMBINAISON & operator+(const MATRICE &, COMBINAISON &);
COMBINAISON & operator-(COMBINAISON &, const MATRICE &);
COMBINAISON & operator*(COMBINAISON &, double);
COMBINAISON & operator*(double, COMBINAISON &);
MATRICE& MATRICE::operator=(COMBINAISON &);
