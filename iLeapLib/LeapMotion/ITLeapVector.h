//
//  ITVector.h
//  Objective-Leap
//
//  Created by Vincent Saluzzo on 08/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ITLeapVector : NSObject

@property (nonatomic, assign) float x;
@property (nonatomic, assign) float y;
@property (nonatomic, assign) float z;

-(id) initWithArray:(NSArray*)array;

@end
