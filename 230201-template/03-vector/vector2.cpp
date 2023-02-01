#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main()
{
    int n;
    cin >> n;
    vector<int> v;
    v.reserve(n);
    for (int i = 0; i < n; ++i) {
        int a;
        cin >> a;
        v.push_back(a);
        cout << "size: " << v.size() << ", capacity: " << v.capacity() << endl;
    }

    v.clear();
    cout << "size: " << v.size() << ", capacity: " << v.capacity() << endl;

    return 0;
}