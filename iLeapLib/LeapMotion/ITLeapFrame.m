//
//  ITLeapFrame.m
//  Objective-Leap
//
//  Created by Vincent Saluzzo on 08/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import "ITLeapFrame.h"
#import "ITLeapGesture.h"
#import "ITLeapPointable.h"
#import "ITLeapHand.h"

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
        
        if([dict objectForKey:@"pointables"]) {
            NSMutableArray* tempArray = [NSMutableArray array];
            for (NSDictionary* aDict in [dict objectForKey:@"pointables"]) {
                [tempArray addObject:[[ITLeapPointable alloc] initWithDict:aDict]];
            }
            self.pointables = tempArray;
        }
        
        if([dict objectForKey:@"hands"]) {
            NSMutableArray* tempArray = [NSMutableArray array];
            for (NSDictionary* aDict in [dict objectForKey:@"hands"]) {
                [tempArray addObject:[[ITLeapHand alloc] initWithDict:aDict]];
            }
            self.hands = tempArray;
        }
        
        self.ID = [dict objectForKey:@"id"];
        self.timestamp = [dict objectForKey:@"timestamp"];
        if([dict objectForKey:@"r"]) {
            NSMutableArray* temp = [NSMutableArray array];
            for (NSArray* rValue in [dict objectForKey:@"r"]) {
                [temp addObject:[[ITLeapVector alloc] initWithArray:rValue]];
            }
            self.r = [NSArray arrayWithArray:temp];
        }
        
        self.s = [dict objectForKey:@"s"];
        self.t = [[ITLeapVector alloc] initWithArray:[dict objectForKey:@"t"]];
        
    }
    return self;
}
@end
