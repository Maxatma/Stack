#import <Foundation/Foundation.h>

@interface StackElementWithoutARC : NSObject

@property (nonatomic, retain) id  data;
@property (nonatomic, retain) StackElementWithoutARC * previously;
- (void)show;

@end
