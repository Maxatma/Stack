//
//  Stack.m
//  Stack
//
//  Created by Zalunin S on 23.04.14.
//  Copyright (c) 2014 Zalunin S. All rights reserved.
//

#import "Stack.h"

@implementation Stack{
     NSMutableArray *stack;
}

-(id)init{
    self = [super init];
    if(self!=nil){
        stack = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
