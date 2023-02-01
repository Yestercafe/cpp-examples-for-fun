#pragma once
#include <cstring>
#include <utility>

namespace my {

template<typename T>
class vector {
    using size_type = unsigned long;
    void make_new_vec(size_type s) {
        T* new_vec = new T[s];
        if (vec) {
            ::std::memcpy(new_vec, vec, sizeof(T) * s);
            delete[] vec;
        }
        vec = new_vec;
        cap = s;
    }

public:
    vector() : vec{nullptr}, len{0u}, cap{0u} {}

    T front() const {
        if (vec)
            return vec[len];
        return {};
    }
    T back() const {
        if (vec)
            return vec[len - 1];
        return {};
    }
    T* data() {
        return vec;
    }
    const T* data() const {
        return vec;
    }
    T& operator[](size_type idx) {
        return vec[idx];   // no bounds checking
    }
    const T& operator[](size_type idx) const {
        return vec[idx];
    }

    bool empty() const {
        return len == 0;
    }
    size_type size() const {
        return len;
    }
    size_type capacity() const {
        return cap;
    }

    void reserve(size_type s) {
        if (s == 0 && s <= cap) return ;
        make_new_vec(s);
    }
    void shrink_to_fit() {
        if (cap == 0 && len == cap) return ;
        if (len == 0) {
            delete[] vec;
            vec = nullptr;
            cap = 0;
            return ;
        }
        make_new_vec(len);
    }

    void insert(size_type idx, T data) {
        if (idx > len) return ;
        if (idx == len) {
            push_back(data);
            return ;
        }

        if (len == cap) {
            if (cap == 0) reserve(1);
            else reserve(2 * cap);
        }
        for (int i = len - 1; ::std::cmp_greater_equal(i, idx); --i) {   // C++20
            vec[i + 1] = vec[i];
        }
        vec[idx] = data;
        ++len;
    }
    void erase(size_type idx) {
        if (idx >= len) {
            return ;
        }
        for (int i = idx + 1; i < len; ++i) {
            vec[i - 1] = vec[i];
        }
        --len;
    }
    void push_back(T data) {
        if (len == cap) {
            if (cap == 0) reserve(1);
            else reserve(2 * cap);
        }
        vec[len++] = data;
    }
    void pop_back() {
        --len;
    }

    void clear() {
        len = 0;
    }

private:
    T* vec;
    size_type cap;   // capacity
    size_type len;   // length
};

}
