#import <Foundation/Foundation.h>
#import "StackWithoutARC.h"
#import "QueueWithoutARC.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool
    {

        StackWithoutARC *s1 = [[StackWithoutARC alloc] init];
        NSLog(@"s1");
        NSLog(@"push:");
        [s1 addObject:@(0)];
        [s1 addObject:@(3)];
        [s1 addObject:@(5)];

        
        NSLog(@"pop:");
        [s1 popObject];
        [s1 popObject];
        [s1 popObject];
        [s1 popObject];

        
        QueueWithoutARC *q1 = [[QueueWithoutARC alloc] init];
        NSLog(@"q1");
           NSLog(@"push:");
        [q1 addObject:@(0)];
        [q1 addObject:@(3)];
        [q1 addObject:@(5)];
           NSLog(@"pop:");
        [q1 popObject];
        [q1 popObject];
        [q1 popObject];
        [q1 popObject];
        assert(q1.lastObject==nil);
    }
    return 0;
}

