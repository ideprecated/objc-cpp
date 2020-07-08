#ifndef WrapperClass_h
#define WrapperClass_h

@interface WrapperClass : NSObject
@end

@interface WrapperClass ()
- (NSString *)getHelloString;
- (NSMutableArray *)sendInfo :(NSString *)str1 :(NSString *)str2;
@end

#endif /* WrapperClass_h */
