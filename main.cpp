#include <iostream>
#include <sxx/random_module.hpp>

int main(int, char**) {
    std::cout << "Hello, world!\n";

    sxx::RandomModule rand_module;
    auto& ref_rand_module = rand_module;

    std::cout << "This is my random shit " << ref_rand_module.GetRandomNumberUnder10() << std::endl;
    
    std::cout << "Done execution. Go fuck yourself." << std::endl;
}
