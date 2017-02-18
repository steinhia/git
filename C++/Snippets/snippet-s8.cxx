{
	double x;
	x=0;
	int N=10;
	for(int i=1;i<N;i++)
	{
		double lng=log(i); lng=lng*lng ;
		double c=cos ( i ) ;
		x+=lng*c;
	}
}
