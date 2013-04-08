//
//  ITLeapFrame.h
//  Objective-Leap
//
//  Created by Vincent Saluzzo on 08/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ITLeapFrame : NSObject

@property (nonatomic, retain) NSArray* gestures;
@property (nonatomic, retain) NSArray* hands;
@property (nonatomic, assign) NSInteger ID;
@property (nonatomic, retain) NSArray* pointables;
@property (nonatomic, retain) NSArray* r;
@property (nonatomic, assign) float s;
@property (nonatomic, retain) NSArray* t;
@property (nonatomic, assign) NSInteger timestamp;


-(id) initWithDict:(NSDictionary*)dict;

@end
