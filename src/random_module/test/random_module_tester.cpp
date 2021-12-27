//
// Created by bispr on 2021-12-27.
//

//#include "../include/sxx/random_module.hpp"
#include <sxx/random_module.hpp>


int main(){
  sxx::RandomModule rand1;
  std::cout << "this tests rand module alone : " << rand1.GetRandomNumberUnder10() << std::endl;

  return 0;
}