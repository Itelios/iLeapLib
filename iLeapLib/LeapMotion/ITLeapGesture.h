//
//  ITLeapGesture.h
//  Objective-Leap
//
//  Created by Vincent Saluzzo on 08/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITLeapVector.h"

@interface ITLeapGesture : NSObject

@property (nonatomic, retain) ITLeapVector* direction;
@property (nonatomic, retain) NSNumber* duration;
@property (nonatomic, retain) NSArray* handIDs;
@property (nonatomic, retain) NSNumber* ID;
@property (nonatomic, retain) NSArray* pointablesIDs;
@property (nonatomic, retain) ITLeapVector* position;
@property (nonatomic, retain) NSNumber* speed;
@property (nonatomic, retain) ITLeapVector* startPosition;
@property (nonatomic, retain) NSString* state;
@property (nonatomic, retain) NSString* type;

-(id) initWithDict:(NSDictionary*)dict;

@end
