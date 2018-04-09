//
// Created by Brian Swenson on 2/5/18.
//

#include <iostream>
#include <thread>
#include <vector>
#include <mutex>

using std::thread;
using std::cout;
using std::endl;
using std::mutex;
using std::unique_lock;

mutex sharedIntMutex;
int mySharedInt = 0;

void incrementMySharedInt() {
    unique_lock<mutex> lock {sharedIntMutex};
    mySharedInt++;
}   //lock is released when `lock` goes out of scope and is destructed

int main() {
    std::vector<thread*> threads;

    for(int i = 0; i < 10000; ++i) {
        threads.push_back(new thread{incrementMySharedInt});
    }

    //main thread could do something else interesting here

    for(auto &t : threads) {
        t->join();
    }

    cout << "Value at end: " << mySharedInt << endl;

    return 0;
}
