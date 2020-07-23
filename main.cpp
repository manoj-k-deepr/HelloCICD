#include <iostream>

void never_called() {

}

int main(int, char**) {
    std::cout << "Hello, world!\n";
    std::cout << "Hello, world 2!\n";
    int i = 0;
    int j = 0;
}
