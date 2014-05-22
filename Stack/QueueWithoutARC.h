#import <Foundation/Foundation.h>
#import "QueueElementWithoutARC.h"

@interface QueueWithoutARC : NSObject
- (void)addObject:(id)object;
- (id)popObject;
@property (nonatomic, assign) NSInteger count;
@property (nonatomic, retain) QueueElementWithoutARC *firstObject;
@property (nonatomic, retain) QueueElementWithoutARC *lastObject;

@end
