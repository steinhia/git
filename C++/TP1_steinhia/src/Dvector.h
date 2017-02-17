class Dvector
{
 public :
  void fillRandomly();
  int size() const;
  Dvector();
  Dvector(int taille, double val);
  Dvector(const Dvector & vect);
  Dvector(std::string str);
  void display(std::ostream& str);
  double& operator()(const int i) const;
  Dvector& operator+=(const double &a);
  Dvector& operator-=(const double &a);
  Dvector& operator*=(const double &a);
  Dvector& operator/=(const double &a);


  ~Dvector();
  double* vector() const;

 private :
 double* vecteur;
 int taille;
};


Dvector operator+(const Dvector & v1, const Dvector & v2);
  Dvector operator-(const Dvector & v1, const Dvector & v2);
  Dvector operator+(const Dvector & vect, const double & a);
  Dvector operator-(const Dvector & vect, const double & a);
  Dvector operator*(const Dvector & vect, const double & a);
  Dvector operator/(const Dvector & vect, const double & a);
