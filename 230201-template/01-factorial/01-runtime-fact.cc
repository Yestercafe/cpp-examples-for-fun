#include <iostream>

int factorial(int n) {
    if (n == 0) {
        return 1;
    }
    return n * factorial(n - 1);
}

int main()
{
    int n;
    cin >> n;
    std::cout << factorial(n) << std::endl;

    return 0;
}
