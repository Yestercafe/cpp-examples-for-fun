#include <iostream>
#include <algorithm>
#include <functional>
#include <array>
#include <iterator>
#include <type_traits>

template<typename Arr>
void print_arr(const Arr& arr) {
    for (auto&& a : arr)
        std::cout << a << ", ";
    endl(std::cout);
}

template<typename RdIt>
void sortDescF(RdIt begin, RdIt end) {
    std::sort(begin, end, std::greater<decltype(*begin)>{});
}

int main()
{
    std::array arr {2, 4, 1, 5, 3};
    print_arr(arr);

    std::sort(std::begin(arr), std::end(arr));
    print_arr(arr);

    auto sortDesc = std::bind(std::sort<decltype(std::begin(arr)), std::greater<int>>, 
            std::placeholders::_1, std::placeholders::_2, std::greater<int>{});
    sortDesc(std::begin(arr), std::end(arr));
    print_arr(arr);

    auto sortDescL = []<typename RdIt>(RdIt begin, RdIt end) {
        std::sort(begin, end, std::greater<decltype(*begin)>{});
    };

    return 0;
}
