#import "QueueElementWithoutARC.h"

@implementation QueueElementWithoutARC

-(id)init
{
    self = [super init];
    return self;
}

-(void) show
{
    NSLog(@"Adress = %p",_data);
}

- (void) dealloc
{
    [_data release];
    [_next release];
    [super dealloc];
}

@end
