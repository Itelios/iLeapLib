//
//  ITVector.m
//  Objective-Leap
//
//  Created by Vincent Saluzzo on 08/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import "ITLeapVector.h"

@implementation ITLeapVector

-(id) initWithArray:(NSArray*)array {
    self = [super init];
    if(self) {
        self.x = [[array objectAtIndex:0] floatValue];
        self.y = [[array objectAtIndex:1] floatValue];
        self.z = [[array objectAtIndex:2] floatValue];
    }
    return self;
}
@end
