
#import <Foundation/Foundation.h>
#import "WrapperClass.h"

@interface CplusplusMMClass : NSObject
@end

@interface CplusplusMMClass()
@property (nonatomic, strong) WrapperClass *wrapper;
- (NSString*)fetchStringFromCplusplus;
- (NSMutableArray *)sendArrayToCplusplus :(NSString *)str1 :(NSString *)str2;
@end
