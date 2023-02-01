#include <iostream>
using std::cout, std::endl;

// 实例化
// 代码生成代码 ： 元编程  meta-programming

template<int n>
int factorial() {
    return n * factorial<n - 1>();
}

template<>
int factorial<0>() {
    return 1;
}

int main()
{
    cout << factorial<6>() << endl;
    return 0;
}
