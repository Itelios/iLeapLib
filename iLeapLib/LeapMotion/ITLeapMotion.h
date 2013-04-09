//
//  ITLeapMotion.h
//  Objective-Leap
//
//  Created by Vincent Saluzzo on 08/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITLeapGesture.h"
#import "ITLeapPointable.h"
#import "ITLeapHand.h"
#import "SRWebSocket.h"

@protocol  ITLeapMotionDelegate <NSObject>
@optional
-(void) leapMotionRecognizeGesture:(ITLeapGesture*)aGesture;
-(void) leapMotionRecognizePointable:(ITLeapPointable*)aPointable;
-(void) leapMotionRecognizeHand:(ITLeapHand*)aHand;
-(void) leapMotionReconizePointableIDIsEnded:(NSNumber*)anId;
@end

@interface ITLeapMotion : NSObject<SRWebSocketDelegate> {
    SRWebSocket* webSocketClient;
    NSArray* pointablesIds;
}

@property (nonatomic, retain) NSString* leapWebSocketServerURL;
@property (nonatomic, weak) id<ITLeapMotionDelegate> delegate;

+(ITLeapMotion*) sharedLeapMotion;
-(void) startListening;
-(void) stopListening;

@end
