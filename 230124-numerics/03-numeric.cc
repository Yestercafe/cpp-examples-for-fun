#include <iostream>
#include <numeric>
#include <vector>
#include <iterator>
#include <algorithm>
#include <functional>

int main()
{
    std::vector<int> v(6);
    std::iota(v.begin(), v.end(), 1);
    for (auto a : v) std::cout << a << ' ';
    endl(std::cout);
    
    std::cout << std::accumulate(v.begin(), v.end(), 1, std::multiplies<int>{}) << std::endl;

    std::vector<int> v2 {2, 5, 4, 3, 1};
    std::vector<int> d(5);
    std::adjacent_difference(v2.begin(), v2.end(), d.begin());
    for (auto a : d) std::cout << a << ' ';
    endl(std::cout);

    std::vector<int> pref(6);
    std::partial_sum(v2.begin(), v2.end(), pref.begin() + 1, [](int a, int b) { return a ^ b; });
    for (auto a : pref) std::cout << a << ' ';
    endl(std::cout);
    
    return 0;
}
