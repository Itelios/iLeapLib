//
//  ITLeapHand.m
//  iLeapLib
//
//  Created by Vincent Saluzzo on 09/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import "ITLeapHand.h"

@implementation ITLeapHand
@synthesize sphereRadius, sphereCenter, s, r, palmVelocity, palmPosition, palmNormal, direction, ID, t;

-(id) initWithDict:(NSDictionary*)dict {
    self = [super init];
    if(self) {
        self.direction = [[ITLeapVector alloc] initWithArray:[dict objectForKey:@"direction"]];
        self.ID = [dict objectForKey:@"id"];
        self.palmNormal = [[ITLeapVector alloc] initWithArray:[dict objectForKey:@"palmNormal"]];
        self.palmPosition = [[ITLeapVector alloc] initWithArray:[dict objectForKey:@"palmPosition"]];
        self.palmVelocity = [[ITLeapVector alloc] initWithArray:[dict objectForKey:@"palmVelocity"]];
        if([dict objectForKey:@"r"]) {
            NSMutableArray* temp = [NSMutableArray array];
            for (NSArray* rValue in [dict objectForKey:@"r"]) {
                [temp addObject:[[ITLeapVector alloc] initWithArray:rValue]];
            }
            self.r = [NSArray arrayWithArray:temp];
        }
        
        self.s = [dict objectForKey:@"s"];
        self.sphereCenter = [[ITLeapVector alloc] initWithArray:[dict objectForKey:@"sphereCenter"]];
        self.sphereRadius = [dict objectForKey:@"sphereRadius"];
        self.t = [[ITLeapVector alloc] initWithArray:[dict objectForKey:@"t"]];
    }
    return self;
}


@end
