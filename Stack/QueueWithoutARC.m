#import "QueueWithoutARC.h"

@implementation QueueWithoutARC

-(id) init
{
    self = [super init];
    return self;
}

- (void)addObject:(id)object
{
    QueueElementWithoutARC *temp = [[QueueElementWithoutARC alloc] init];
    temp.data=object;
    
    temp.next=self.lastObject;
    self.lastObject=temp;

    [temp show];
    NSLog(@"Data = %@",temp.data);
    NSLog(@"temp count %lu",(unsigned long)[temp retainCount]);
    
    if (!_lastObject)
    {
        self.firstObject=temp;
    }
    
    [temp release];
    _count++;
}

- (id)popObject
{
    if (_lastObject)
    {
        NSLog(@"Data = %@",_lastObject.data);
        NSLog(@"First obj %lu",(unsigned long)[self.lastObject retainCount]);
        
        id last=self.lastObject.data;
        self.lastObject=self.lastObject.next;
        
        NSLog(@"Data = %@",_lastObject.data);
        NSLog(@"First obj %lu",(unsigned long)[_lastObject retainCount]);
        NSLog(@"Deleted");
        _count--;
        return last;
    }
    else
    {
        NSLog(@"Stahp, u cant do more, our queue is already empty");
        return nil;
    }
    
}

- (void) dealloc
{
    [_firstObject release];
    [_lastObject release];
    [super dealloc];
}

@end
