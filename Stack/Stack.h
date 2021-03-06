//
//  Stack.h
//  Stack
//
//  Created by Zalunin S on 23.04.14.
//  Copyright (c) 2014 Zalunin S. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject
-(void)push:(id)obj;
-(id)pop;
-(NSUInteger)size;
-(id)peek;
-(BOOL)isEmpty;

@end
