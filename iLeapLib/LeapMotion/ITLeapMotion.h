//
//  ITLeapMotion.h
//  Objective-Leap
//
//  Created by Vincent Saluzzo on 08/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITLeapGesture.h"
#import "SRWebSocket.h"

@protocol  ITLeapMotionDelegate <NSObject>
@optional
-(void) leapMotionRecognizeGesture:(ITLeapGesture*)aGesture;

@end

@interface ITLeapMotion : NSObject<SRWebSocketDelegate> {
    SRWebSocket* webSocketClient;
}

@property (nonatomic, retain) NSString* leapWebSocketServerURL;
@property (nonatomic, weak) id<ITLeapMotionDelegate> delegate;

+(ITLeapMotion*) sharedLeapMotion;
-(void) startListening;
-(void) stopListening;

@end
