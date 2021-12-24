#include <sxx/random_module.hpp>
#include <random>

int sxx::RandomModule::GetRandomNumberUnder10() {
    std::srand(std::time(nullptr));
    
    return std::rand() % 10;
}
