#include <iostream>
#include <functional>

int add(int x, int y) {
    return x + y;
}

std::function<int(int)> add(int x) {
    return [x](int y) {
        return x + y;
    };
}

int main()
{
    // add(1, 2)
    // add(1) => X   X(2) => 3   ====>   add(1)(2)

    std::cout << add(1, 2) << std::endl;
    std::cout << add(1)(2) << std::endl;

    auto add1 = add(1);
    std::cout << add1(3) << std::endl;
    std::cout << add1(5) << std::endl;

    return 0;
}
