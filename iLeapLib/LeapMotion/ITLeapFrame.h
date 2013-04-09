//
//  ITLeapFrame.h
//  Objective-Leap
//
//  Created by Vincent Saluzzo on 08/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITLeapVector.h"
@interface ITLeapFrame : NSObject

@property (nonatomic, retain) NSArray* gestures;
@property (nonatomic, retain) NSArray* hands;
@property (nonatomic, retain) NSNumber* ID;
@property (nonatomic, retain) NSArray* pointables;
@property (nonatomic, retain) NSArray* r;
@property (nonatomic, retain) NSNumber* s;
@property (nonatomic, retain) ITLeapVector* t;
@property (nonatomic, retain) NSNumber* timestamp;


-(id) initWithDict:(NSDictionary*)dict;

@end
