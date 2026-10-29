#include <cassert>
#include <cstdint>
#include <iostream>
#include <vector>

int main() {
    std::vector<std::int64_t> v = {1, 2, 4, 8, 16};
    std::int64_t sum = 0;
    for (auto x : v) {
        sum += x;
    }
    assert(sum == 31);
    std::cout << "✅ C++20 Sanitizer Oracle (ASan + UBSan): OK\n";
    return 0;
}
