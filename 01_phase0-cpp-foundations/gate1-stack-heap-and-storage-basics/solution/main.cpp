#include <iostream>

// Gate 1 starter: declare the required global integer above main.
// Then complete the local, dynamic, and block-local objects for the task.

static int global{100};

int main() {

    int local{20};
    int* heap = new int{30};
    
    std::cout << "global: " << global << '\n';
    std::cout << "local: " << local << '\n';
    std::cout << "heap: " << *heap << '\n';
    
    {
        int block{40};
        std::cout << "block: " << block << '\n';
    }

    std::cout << "after block: global=" << global << " local=" << local << " heap=" << *heap;

    delete heap;
    heap = nullptr;

}
