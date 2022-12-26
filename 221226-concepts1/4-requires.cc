#include <iostream>
#include <concepts>

template<typename T>
concept hasHashInt = requires(T a) {
    { a.hash() } -> std::same_as<int>;
};

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
    requires requires(T a) {
        { a.hash() } -> std::same_as<int>;
    }
int getHash(const T& a) {
    return a.hash();
}

int main()
{
    std::cout << getHash(B(2)) << std::endl;
    std::cout << getHash(C(2)) << std::endl;
    return 0;
}

