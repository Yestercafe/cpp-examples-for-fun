#include <iostream>
#include <unordered_set>
#include <vector>

struct Foo {
    std::vector<int> v;
};

int main()
{
    std::unordered_set<Foo> a;
    return 0;
}

