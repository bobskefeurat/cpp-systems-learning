#include <iostream>

// Gate 2 starter: add one by-value function and one by-reference function above main.
// Then use the same caller variable in main to show the different outcomes.

void by_value(int y)
{
    std::cout << "inside value: " << ++y <<'\n';
}

void by_reference(int& y)
{
    std::cout << "inside reference: " << ++y <<'\n';
}

int main() {
    
    int x{5};

    std::cout << "start: " << x << '\n';
    by_value(x);
    std::cout << "after value: " << x << '\n';
    by_reference(x);
    std::cout << "after reference: " << x << '\n';

}
