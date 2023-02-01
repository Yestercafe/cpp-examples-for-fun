#include "vector.hpp"
#include <iostream>
#include <vector>
using std::cout, std::endl;

template<typename C>
void info(const C& c) {
    for (int i = 0; i < c.size(); ++i) {
        cout << c[i] << ' ';
    }
    cout << endl;
    cout << "size = " << c.size() << ", cap = " << c.capacity() << endl;
}

int main()
{
    std::vector<int> v;
    v.push_back(1);
    v.push_back(2);
    v.push_back(3);
    info(v);

    v.push_back(4);
    v.push_back(5);
    info(v);

    v.shrink_to_fit();
    info(v);

    v.push_back(6);
    info(v);
    cout << v[3] << endl;

    v.reserve(11);
    info(v);

    v.clear();
    info(v);

    v.shrink_to_fit();
    info(v);

    return 0;
}
