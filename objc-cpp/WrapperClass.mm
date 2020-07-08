
#import <Foundation/Foundation.h>

#import "WrapperClass.h"

#include "WrapperClass.h"
#include "PureCplusplusClass.h"

using namespace test;

@interface WrapperClass ()
@property (nonatomic) HelloTest helloTest;
@end

@implementation WrapperClass

- (NSString *)getHelloString {
    std::string str = self.helloTest.getHelloString();
    NSString* result = [[NSString alloc] initWithUTF8String:str.c_str()];
    return result;
}

- (NSMutableArray *)sendInfo :(NSString *)str1 :(NSString *)str2 {
    std::string strc1 = std::string([str1 UTF8String]);
    std::string strc2 = std::string([str2 UTF8String]);
    std::array<std::string, 2> myArray = {{ strc1, strc2 }};
    //self.helloTest->setHelloStrings(myArray); // tf
    self.helloTest.setHelloStrings(myArray);
    return 0;
}

@end
