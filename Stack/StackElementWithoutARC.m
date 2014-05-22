#import "StackElementWithoutARC.h"

@implementation StackElementWithoutARC

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
    [_previously release];
    [super dealloc];
}

@end
