Point& Point::operator=(const Point &P)
{
  dim = P.dim;
  pCor = new double[dim];
  memcpy(pCor, P.pCor, dim * sizeof(double));

  return *this;
}
