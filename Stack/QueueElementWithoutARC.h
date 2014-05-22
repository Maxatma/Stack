#import <Foundation/Foundation.h>

@interface QueueElementWithoutARC : NSObject

@property (nonatomic, retain) id data;
@property (nonatomic, retain) QueueElementWithoutARC * next;
- (void)show;

@end
