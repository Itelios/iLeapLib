//
//  ITLeapPointable.m
//  iLeapLib
//
//  Created by Vincent Saluzzo on 09/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import "ITLeapPointable.h"

@implementation ITLeapPointable
@synthesize tool, tipVelocity, tipPosition, length, handId, ID, direction;

-(id) initWithDict:(NSDictionary*)dict {
    self = [super init];
    if(self) {
        self.direction = [[ITLeapVector alloc] initWithArray:[dict objectForKey:@"direction"]];
        self.ID = [dict objectForKey:@"id"];
        self.handId = [dict objectForKey:@"handId"];
        self.length = [dict objectForKey:@"length"];
        self.tipPosition = [[ITLeapVector alloc] initWithArray:[dict objectForKey:@"tipPosition"]];
        self.tipVelocity = [[ITLeapVector alloc] initWithArray:[dict objectForKey:@"tipVelocity"]];
        self.tool = [[dict objectForKey:@"tool"] boolValue];
    }
    return self;
}

@end
