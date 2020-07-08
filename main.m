#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

#import "CplusplusMMClass.h"

int main(void){
    
    // get string from cpp
    
    CplusplusMMClass *mmclass = [[CplusplusMMClass alloc] init];  // bad practice; but showing code
    NSString *str = mmclass.fetchStringFromCplusplus;
    NSLog(@"<< %@", str);
    
    // send array to cpp
    
    NSString *str1 = @"Foobar";
    NSString *str2 = @"Bazboo";
    
    NSMutableArray *arr = [mmclass sendArrayToCplusplus:str1:str2];
    NSLog(@">> %@", arr);
    
    // meaningless oode
    
    NSString *s = @"\t[ Obj-C to CPP ]";
    [[NSFileHandle fileHandleWithStandardOutput] writeData: [s dataUsingEncoding: NSUTF8StringEncoding]];


    return 0;

}
