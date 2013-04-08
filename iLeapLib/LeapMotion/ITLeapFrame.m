//
//  ITLeapFrame.m
//  Objective-Leap
//
//  Created by Vincent Saluzzo on 08/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import "ITLeapFrame.h"
#import "ITLeapGesture.h"

@implementation ITLeapFrame

-(id) initWithDict:(NSDictionary*)dict {
    self = [super init];
    if(self) {
        if([dict objectForKey:@"gestures"]) {
            NSMutableArray* tempArray = [NSMutableArray array];
            for (NSDictionary* aDict in [dict objectForKey:@"gestures"]) {
                [tempArray addObject:[[ITLeapGesture alloc] initWithDict:aDict]];
            }
            self.gestures = tempArray;
        }
    }
    return self;
}
@end
