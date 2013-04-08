//
//  ITLeapGesture.m
//  Objective-Leap
//
//  Created by Vincent Saluzzo on 08/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import "ITLeapGesture.h"
#import "ITLeapVector.h"

@implementation ITLeapGesture


-(id) initWithDict:(NSDictionary*)dict {
    self = [super init];
    if(self) {
        self.direction = [[ITLeapVector alloc] initWithArray:[dict objectForKey:@"direction"]];
        self.duration = [dict objectForKey:@"duration"];
        self.handIDs = [dict objectForKey:@"handIds"];
        self.ID = [dict objectForKey:@"id"];
        self.pointablesIDs = [dict objectForKey:@"pointableIds"];
        self.position = [[ITLeapVector alloc] initWithArray:[dict objectForKey:@"position"]];
        self.speed = [dict objectForKey:@"speed"];
        self.startPosition = [[ITLeapVector alloc] initWithArray:[dict objectForKey:@"startPosition"]];
        self.state = [dict objectForKey:@"state"];
        self.type = [dict objectForKey:@"type"];
    }
    return self;
}

@end
