#include <iostream>
#include <cmath>
#include <iomanip>

int main()
{
    for (int i = 1; i <= 171; ++i) {
        //std::cout << std::setprecision(0) << std::tgamma(i) << std::endl;
        std::printf("%.0lf\n", std::tgamma(i));
    }
    return 0;
}
