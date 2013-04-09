//
//  ITLeapPointable.h
//  iLeapLib
//
//  Created by Vincent Saluzzo on 09/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITLeapVector.h"

@interface ITLeapPointable : NSObject

@property (nonatomic, retain) ITLeapVector* direction;
@property (nonatomic, retain) NSNumber* handId;
@property (nonatomic, retain) NSNumber* ID;
@property (nonatomic, retain) NSNumber* length;
@property (nonatomic, retain) ITLeapVector* tipPosition;
@property (nonatomic, retain) ITLeapVector* tipVelocity;
@property (nonatomic, assign) BOOL tool;


-(id) initWithDict:(NSDictionary*)dict;


@end
