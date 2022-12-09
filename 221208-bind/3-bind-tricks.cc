#include <iostream>
#include <functional>
#include <queue>

int factorialIter(int i, int bound, int val) {
    return i > bound ? val
                     : factorialIter(i + 1, bound, i * val);
}

int factorial(int n) {
    return factorialIter(1, n, 1);
}

auto fact = std::bind(factorialIter, 1, std::placeholders::_1, 1);

int BFS(int i, const std::deque<int>& d) {
    int ans {};
    std::deque<bool> vis(d.size(), false);
    std::queue<int> q;
    q.push(i);
    vis[i] = true;
    while (!q.empty()) {
        auto fr = q.front();
        q.pop();
        // blahblah
        // ans ...
    }

    return ans;
}

int main()
{
    std::cout << factorialIter(1, 10, 1) << std::endl;
    std::cout << factorial(10) << std::endl;
    std::cout << fact(10) << std::endl;
    
    auto ans1 = BFS(0, std::deque<int> {1, 2, 3});
    auto ans2 = BFS(0, std::deque<int> {1, 2, 3, 4});
    auto BFSSpec = std::bind(BFS, 0, std::placeholders::_1);
    auto ans11 = BFSSpec(std::deque<int> {1, 2, 3});
    auto ans22 = BFSSpec(std::deque<int> {1, 2, 3, 4});

    return 0;
}

