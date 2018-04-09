#include <iostream>
#include <thread>
#include <vector>

using std::thread;
using std::cout;
using std::endl;

int mySharedInt = 0;

void incrementMySharedInt() {
    mySharedInt++;
}

int main() {
    std::vector<thread*> threads;

    for(int i = 0; i < 1000; ++i) {
        threads.push_back(new thread{incrementMySharedInt});
    }

    //main thread could do something else interesting here

    for(auto &t : threads) {
        t->join();
    }

    cout << "Value at end: " << mySharedInt << endl;

    return 0;
}
