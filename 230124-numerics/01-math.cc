#include <iostream>
#include <cmath>
#include <iomanip>
#include <numbers>

int main()
{
    std::cout << std::fixed << std::setprecision(20) << std::numbers::pi << std::endl;

    //double inf = -std::numeric_limits<double>::infinity();
    double inf = 12345.678;
    std::cout << std::boolalpha << std::isinf(inf) << std::endl;

    return 0;
}
