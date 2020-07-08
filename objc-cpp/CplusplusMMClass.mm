
#import "CplusplusMMClass.h"

@implementation CplusplusMMClass

- (NSString*)fetchStringFromCplusplus {
    self.wrapper = [[WrapperClass alloc] init];
    NSString * result = [self.wrapper getHelloString];
    return result;
}

- (NSMutableArray *)sendArrayToCplusplus :(NSString *)str1 :(NSString *)str2 {
    self.wrapper = [[WrapperClass alloc] init];
    NSMutableArray * arr = [self.wrapper sendInfo:str1 :str2];
    return arr;
}

- (void)sendInfo :(NSString *)str1 :(NSString *)str2 {
    
}

@end
