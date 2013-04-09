//
//  ITLeapMotion.m
//  Objective-Leap
//
//  Created by Vincent Saluzzo on 08/04/13.
//  Copyright (c) 2013 Itelios. All rights reserved.
//

#import "ITLeapMotion.h"
#import "JSONKit.h"
#import "ITLeapFrame.h"

@implementation ITLeapMotion

#pragma mark - Singleton

static ITLeapMotion* instance = nil;

+(ITLeapMotion*) sharedLeapMotion {
    if(instance == nil) {
        instance = [[ITLeapMotion alloc] init];
    }
    return instance;
}


#pragma mark - Init

-(id) init {
    self = [super init];
    if(self) {
    }
    return self;
}

-(void) startListening {
    if(self.leapWebSocketServerURL) {
        webSocketClient = [[SRWebSocket alloc] initWithURL:[NSURL URLWithString:self.leapWebSocketServerURL]];
    } else {
        webSocketClient = [[SRWebSocket alloc] initWithURL:[NSURL URLWithString:@"ws://localhost:6437/"]];
    }
    webSocketClient.delegate = self;
    [webSocketClient open];
}

-(void) stopListening {
    [webSocketClient close];
}


#pragma mark - SRWebSocketDelegate methods

-(void) webSocket:(SRWebSocket *)webSocket didReceiveMessage:(id)message {
    NSDictionary* dict = [message objectFromJSONString];
    ITLeapFrame* frame = [[ITLeapFrame alloc] initWithDict:dict];
    if(frame.hands.count > 0) {
        for (ITLeapHand* hand in frame.hands) {
            if(self.delegate && [self.delegate respondsToSelector:@selector(leapMotionRecognizeHand:)]) {
                [self.delegate leapMotionRecognizeHand:hand];
            }
        }
    }
    
    if(frame.pointables.count > 0) {
        for (ITLeapPointable* pointable in frame.pointables) {
            if(self.delegate && [self.delegate respondsToSelector:@selector(leapMotionRecognizePointable:)]) {
                [self.delegate leapMotionRecognizePointable:pointable];
            }
        }
    }
    
    if(frame.gestures.count > 0) {
        for (ITLeapGesture* gesture in frame.gestures) {
            if(self.delegate && [self.delegate respondsToSelector:@selector(leapMotionRecognizeGesture:)]) {
                [self.delegate leapMotionRecognizeGesture:gesture];
            }
        }
    }
    
}

@end
