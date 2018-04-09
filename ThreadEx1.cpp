//
// Created by Brian Swenson on 2/5/18.
//

//
// Created by Brian Swenson on 2/5/18.
//

#include <iostream>
#include <thread>
#include <vector>
#include <mutex>
#include <queue>

using std::thread;
using std::cout;
using std::endl;
using std::mutex;
using std::unique_lock;
using std::queue;
using std::condition_variable;

struct Cookie {
    explicit Cookie(int c) : calories(c) {}
    int calories;
};

//http://en.cppreference.com/w/cpp/container/queue
//std::deque is default but putting it in here so you're aware
//you have options
queue<Cookie, std::deque<Cookie>> cookies;
condition_variable cookie_cond;
mutex cookie_mutex;

void producer() {
    while(true) {
        Cookie newCookie(200);
        unique_lock<mutex> lock(cookie_mutex);
        cookies.push(newCookie);
        cookie_cond.notify_one();

        //cout << "Oh I love to bake cookies" << endl;
    } //lock is released here
}

void consumer() {
    while(true) {
        unique_lock<mutex> lock {cookie_mutex};
        //give the condition variable a locked mutex
        cookie_cond.wait(lock);

        //time passes
        //when `wait` is called, the condition variable releases the lock
        //so another thread can obtain it
        //when this thread wakes, the lock will be set to locked

        //grab a cookie
        cookies.pop();

        //eat the cookie
        //cout << "Yum I love to eat cookies" << endl;
        cout << "Queue size: " << cookies.size() << endl;

    }   //lock released here
}

int main() {
    std::vector<thread*> threads;

    thread t1 { producer };
    thread t2 { consumer };

    t1.join();
    t2.join();

    return 0;
}
