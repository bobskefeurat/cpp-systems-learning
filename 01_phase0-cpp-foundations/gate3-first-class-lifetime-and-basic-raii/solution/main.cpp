#include <iostream>

// Gate 3 starter: define the required class and observe helper above main.
// Then create one object in main and one inside the nested block to show lifetime order.

class ScopeMarker
{
char m_tag;

public:

    ScopeMarker(char tag)
    {
        m_tag = tag;

        std::cout << "construct: " <<  tag << '\n';
    }

    char tag()
    {
        return m_tag;
    }

    ~ScopeMarker()
    {
        std::cout << "destroy: " << m_tag << '\n';
    }

};

void observe(ScopeMarker& scope_marker)
{
    std::cout << "observe: " << scope_marker.tag() << '\n';
}

int main() {
    
    ScopeMarker scope_marker_a{'A'};

    observe(scope_marker_a);

    std::cout << "before inner block\n";

    {
        ScopeMarker scope_marker_b{'B'};
        observe(scope_marker_b);
        std::cout << "leaving inner block\n";
    }

    std::cout << "after inner block\n";
}
