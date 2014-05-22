#import "StackWithoutARC.h"

@implementation StackWithoutARC

-(id) init
{
    self = [super init];
    return self;
}

- (void)addObject:(id)object
{
    StackElementWithoutARC *temp = [[StackElementWithoutARC alloc] init];
    temp.data = object;
    temp.previously = self.lastObject;
    self.lastObject = temp;
    _count++;
    [temp release];
    NSLog(@"temp  %lu",(unsigned long)[temp retainCount]);
    NSLog(@"lastObject  data %@",self.lastObject.data);
    NSLog(@"lastObject  count %lu",(unsigned long)[self.lastObject retainCount]);
    
}

- (id)popObject
{
    if (_lastObject)
    {
        id last = self.lastObject.data;
        self.lastObject=self.lastObject.previously;
        _count--;
        NSLog(@"lastObject  data %@",self.lastObject.data);
        NSLog(@"lastObject  count %lu",(unsigned long)[self.lastObject retainCount]);
        return last;
    }
    else
    {
        NSLog(@"Stahp, u cant do more, our stack is already empty");
        return nil;
    }
}

- (void) dealloc
{
    [_lastObject release];
    [super dealloc];
}

@end
