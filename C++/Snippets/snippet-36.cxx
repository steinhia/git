#include <iostream>
int main(){

  int my_array[5] = {1, 2, 3, 4, 5};
  // Boucle automatique sur le contenu d'un tableau
  for (auto&& x : my_array) {
    std::cout<< x << " ";
  }
  std::cout<<std::endl;
  return 0;
}
