#include <functional>
#include <iostream>

// add(1, 2) ==> add(1)(2)

int foo(int a, int b) {
    std::cout << "a = " << a << ", b = " << b << std::endl;
    return a + b;
}

// add(1, 2)
// add(1, _1)(2)   ->  _1 = 2
//
// printf("{_1} {_2}", a, b);
//
// add(_2, _1)(1, 2)   ===   add(2, 1)

int main()
{
    using namespace std::placeholders;
    auto f1 = std::bind(foo, 1, _1);
    std::cout << f1(2) << std::endl;

    auto f2 = std::bind(foo, _1, 1);
    std::cout << f2(2) << std::endl;

    std::cout << std::bind(foo, 1, _1)(2) << std::endl;

    // C++20
    std::cout << std::bind_front(foo, 1)(2) << std::endl;

    // C++23
    //std::cout << std::bind_back(foo, 2)(1) << std::endl;

    return 0;
}

