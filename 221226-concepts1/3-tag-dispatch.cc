#include <iostream>
#include <type_traits>

struct B {
    int val;
    B(int val) : val{val} {}
    B() = default;
    int hash() const {
        return val * val;
    }
};

struct C {
    int val;
    C(int val) : val{val} {}
    C() = default;
    unsigned hash() const {
        return val * val;
    }
};

template<typename T>
int getHash(const T& a, std::true_type) {
    return a.hash();
}

template<typename T>
int getHash(const T& a, std::false_type) {
    return -1;
}

template<typename T>
int getHash(const T& a) {
    // dispatch 
    
    /**
     * pseudocode:
     *
     * if (decltype(T().hash()) == int) {
     *     return getHash(a, std::true_type{});
     * } else {
     *     return getHash(a, std::false_type{});
     * }
     *
     * condition ? true_cond : false_cond
     *
     * return getHash(a, b ? std::true_type{} : std::false_type{});
     */

    return getHash(a, std::conditional_t<std::is_same_v<decltype(T().hash()), int>, std::true_type, std::false_type>{});
}

int main()
{
    std::cout << getHash(B(2)) << std::endl;
    std::cout << getHash(C(2)) << std::endl;
    return 0;
}

