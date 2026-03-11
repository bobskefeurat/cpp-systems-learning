#include <iostream>

// Gate 4 starter: keep the project in one file and integrate the earlier phase concepts.
// Add the required global integer, helpers, small class, and nested lifetime block above and inside main.

int global_int{1};

class Label
{
    private:

        char label;

    public:
        
        Label(char c) : label(c)
        {
            std::cout << "enter: " << label << '\n';
        }

        ~Label()
        {
            std::cout << "leave: " << label << '\n';
        }

};

void helper_by_value(int start_val, int bonus_val)
{
    std::cout << "preview: " << start_val + bonus_val << '\n';
}

void helper_by_reference(int& start_val, int bonus_val)
{
    start_val = start_val + bonus_val;
}

int main() {
    
    int start_val{};
    int* bonus_val = {new int};

    std::cin >> start_val >> *bonus_val;

    Label outer_label{'S'};

    std::cout 
    << "global: " << global_int <<'\n'
    << "start: " << start_val <<'\n'
    << "heap bonus: " << *bonus_val <<'\n';

    {
        Label inner_label{'C'};
        helper_by_value(start_val, *bonus_val);
        std::cout << "after preview: " << start_val << '\n';
        helper_by_reference(start_val, *bonus_val);
        std::cout << "after apply: " << start_val <<'\n';
    }

    delete bonus_val;
    bonus_val = nullptr;

    std::cout << "cleanup: ok\n";
    
}
