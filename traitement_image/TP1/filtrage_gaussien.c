#include "pgm.h"
#include "math.h"


// fft-1( shift(fft(image)) * fft(gaussienne) )
double fft_gaussienne_xy(double x, double y, int N, int M, double sigma) {
  //return (1.0/(2.0*M_PI*sigma*sigma)*exp((-x*x+y*y)/(2.0*sigma*sigma)));
  return(exp(-2.0*M_PI*M_PI*sigma*sigma*(pow((x-N/2)/N,2)+pow((y-M/2)/M,2))));
}

double** fft_gaussienne(int N, int M, double sigma) {
  double **im;
  for(int i=0; i<N; i++) {
    for(int j=0; j<M; j++) {
      im[i][j]=fft_gaussienne_xy(i,j,N,M,sigma);
    }
  }
  return im;
}

main(int ac, char **av) {

  int nb,nl,nc, oldnl,oldnc;
  unsigned char **im2=NULL,** im1=NULL;
  double** im4,** im5, ** im6, ** im7, **im8, **im9,**im10;

  //Lecture de l'image
 if (ac < 3) {printf("Usage : %s entree sortie \n",av[0]); exit(1); }
	/* Lecture d'une image pgm dont le nom est passe sur la ligne de commande */
  im1=lectureimagepgm(av[1],&nl,&nc);
  if (im1==NULL)  { puts("Lecture image impossible"); exit(1); }

  /*  la fft demande des puissances de 2. On padde avec des 0, mais les dimensions nl et nc changent */ 
  im7=padimdforfft(im1,&nl,&nc);
  /*
	On peut aussi directement utiliser 
	im7=padimucforfft(im1,&nl,&nc);
	sans convertir im1 en image de réels
  */ 
	/* Creation des images pour les parties reelles et imagianires des fft  */
  im4=alloue_image_double(nl,nc); // -> imaginaire nulle?
  im5=alloue_image_double(nl,nc); 
  im6=alloue_image_double(nl,nc);

  /* calcul de la fft de la gaussienne */


/* Calcul de la fft de im7,im4 */
  // im7 et im4 parties réelle et imaginaire de l'image (entrée)
  // im5 et im6 parties réelle et imaginaire de la fft (sortie)
  fft(im7,im4,im5,im6,nl,nc);

  //on effectue le shift
  fftshift(im5,im6,im4,im7,nl,nc);


im8=alloue_image_double(nl,nc);
im8=fft_gaussienne(nl,nc,1);
padimdforfft(im8,&nl,&nc);

  im4=alloue_image_double(nl,nc);
  im7=alloue_image_double(nl,nc);
  // multiplie par gaussienne -> complexe -> slmt mult :)
  //parties réelles et imaginaires du produit
 for (int i=0; i<nl; i++) {
   for(int j=0; j<nc; j++) {
       im4[i][j]=im5[i][j]*im8[i][j]; // à rajouter : chainage toutes les valeurs en fct de x?
       im7[i][j]=im6[i][j]*im8[i][j];
   }
 }

  //deshift
 fftshift(im4,im7,im5,im6,nl,nc);

	/* Creation des images pour les parties reelles et imagianires des fft inverses */  
  im9=alloue_image_double(nl,nc); 
  im10=alloue_image_double(nl,nc); 
  /* Clacul de la fft inverse de im5,im6 */
  ifft(im5,im6,im9,im10,nl,nc);
   for (int i=0; i<nl; i++) {
   for(int j=0; j<nc; j++) {
  printf("%f",im9[i][j]);
   }
   }
	/* Conversion en entier8bits de la partie reelle de la fftinverse, 
	   Suppresion des 0 qui ont servi a completer en utilisant la fonction crop
	   Sauvegarde au format pgm de cette image qui doit etre identique a 'linverse video 
	   car on a realise la suite fftinv(fft(image))*/
  //ecritureimagepgm(av[2],crop(imdouble2uchar(im9,nl,nc),0,0,oldnl,oldnc),oldnl,oldnc);
}
