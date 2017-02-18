class liste_POINT
{
  public POINT ** liste ;         // tableau de pointeurs
  unsigned int nb_points ;        // nombre de points
  liste_POINT(unsigned int i=10); // constructeur
  ~liste_POINT ( ) ;              // destructeur
  void allonge ();                //augmente la taille du tableau de 10
  POINT & operator(const int &);  //acces au i eme point
  add(const POINT &);             //ajout d'un point
};

liste_POINT & operator <<(liste_POINT &L,const POINT &P)
{
  L.add(P);
  return L;
}
