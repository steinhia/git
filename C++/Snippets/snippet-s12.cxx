{
  double *pX,*pTab;
  int lg=10;
  pX=new double ; // pointeur sur un double
  pTab=new double [ lg ] ; // pointeur sur un double ,
  // premiere case du tableau

  delete pX;      // desallocation
  delete []   pTab;
}
