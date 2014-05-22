#import <Foundation/Foundation.h>
#import "StackElementWithoutARC.h"

@interface StackWithoutARC : NSObject

- (void)addObject:(id)object;
- (id)popObject;
@property (nonatomic, assign) NSInteger count;
@property (nonatomic, retain) StackElementWithoutARC *lastObject;

@end
