#include <iostream>
#include <list>
#include <vector>
#include <numeric>
#include <thread>
#include <future>

template<typename T>
struct Sum {
    constexpr T operator()(const T& lhs, const T& rhs) const {
        return lhs + rhs;
    }
};

template<typename T>
struct Product {
    constexpr T operator()(const T& lhs, const T& rhs) const {
        return lhs * rhs;
    }
};

template<typename It, typename T, typename BinaryOp>
T reduce(It first, It last, T initial, BinaryOp op) {
    for(; first != last; ++first) {
        initial = op(initial, *first);
    }
    return initial;
};

template<typename It, typename T>
T sum(It first, It last, T initial) {
    for(; first != last; ++first) {
        initial = initial + *first;
    }
    return initial;
};

int main() {

    std::vector<int> myIntsV {4, 2, 5, 1, 12, 5, 14, 6};

    std::list<int> myIntsL {4, 2, 5, 1, 12, 5, 14, 6};

    //Iterators are wrappers for pointers
    std::vector<int>::iterator begin = myIntsV.begin();
    auto end = myIntsV.end();

    std::cout << "Address first vec element " << &myIntsV[0] << std::endl;
    std::cout << "Address of vec 'begin' " << &(*begin) << std::endl;

    std::cout << "Address of last vec element " << &myIntsV[7] << std::endl;
    std::cout << "Address of vec 'last' " << &(*end) << std::endl;

    //Same for end?
    //change to 8, now the same

    //why can't you reference a list by []?

    std::cout << "List 'begin' " << &(*myIntsL.begin()) << std::endl;

    for(auto it = myIntsL.begin(); it != myIntsL.end(); ++it) {
        std::cout << "Address: " << &(*it) << std::endl;
    }

    std::cout << "List 'end' " << &(*myIntsL.end()) << std::endl;

    //ok now i want to sum my integers

    int mySum = 0;

    for(auto it = myIntsL.begin(); it != myIntsL.end(); ++it) {
        mySum += *it;
    }
    std::cout << "My sum " << mySum << std::endl;

    mySum = 0;
    mySum = sum(myIntsL.begin(), myIntsL.end(), 0);

    std::cout << "My sum " << mySum << std::endl;

    mySum = 0;
    mySum = reduce(myIntsL.begin(), myIntsL.end(), 0, Sum<int>());

    std::cout << "My sum " << mySum << std::endl;

    std::cout << Product<int>()(5, 2) << std::endl;

    int myProduct = 0;
    myProduct = reduce(myIntsV.begin(), myIntsV.end(), 1, Product<int>());
    std::cout << myProduct << std::endl;

    mySum = std::accumulate(myIntsL.begin(), myIntsL.end(), 0);

    std::cout << mySum << std::endl;

    myProduct = reduce(myIntsL.begin(), myIntsL.end(), 1, std::multiplies<>());

    std::cout << myProduct << std::endl;

    std::future<int> f1 = std::async(std::launch::async, [&] { return std::accumulate(myIntsL.begin(), myIntsL.end(), 0);} );

    //add half of the vector
    std::future<int> f2 = std::async(std::launch::async, [&] { return std::accumulate(myIntsL.begin(), std::next(myIntsL.begin(), 4), 0); });

    std::cout << "My sum async : " << f1.get();
    std::cout << "half sum : " << f2.get();


    return 0;
}
