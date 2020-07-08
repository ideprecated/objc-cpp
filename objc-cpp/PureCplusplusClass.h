
#ifndef PureCplusplusClass_hpp
#define PureCplusplusClass_hpp

#include <stdio.h>
#include <string>
#include <array>

using namespace std;

namespace test {
    class HelloTest {
    public:
        std::string getHelloString();
        void setHelloStrings(const std::array<std::string, 2>& strings);
    };
}

#endif /* PureCplusplusClass_hpp */
