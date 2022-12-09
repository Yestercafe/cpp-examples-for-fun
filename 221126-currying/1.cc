#include <iostream>
#include <vector>

// 仿函数
struct Functor {
    int x = 0;
    int inc() {
        return ++x;
    }
    int operator()() {
        return ++x;
    }
};

int main()
{
    Functor foo;
    return foo.operator()() != foo.operator()();
}
