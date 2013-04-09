//
//  ITLeapHand.h
//  iLeapLib
//
//  Created by Vincent Saluzzo on 09/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITLeapVector.h"

@interface ITLeapHand : NSObject

@property (nonatomic, retain) ITLeapVector* direction;
@property (nonatomic, retain) NSNumber* ID;
@property (nonatomic, retain) ITLeapVector* palmNormal;
@property (nonatomic, retain) ITLeapVector* palmPosition;
@property (nonatomic, retain) ITLeapVector* palmVelocity;
@property (nonatomic, retain) NSArray* r;
@property (nonatomic, retain) NSNumber* s;
@property (nonatomic, retain) ITLeapVector* sphereCenter;
@property (nonatomic, retain) NSNumber* sphereRadius;
@property (nonatomic, retain) ITLeapVector* t;

-(id) initWithDict:(NSDictionary*)dict;


@end
