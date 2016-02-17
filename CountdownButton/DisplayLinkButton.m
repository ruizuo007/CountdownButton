//
//  DisplayLinkButton.m
//  CountdownButton
//
//  Created by shenlong on 16/2/17.
//  Copyright © 2016年 graystone.inc. All rights reserved.
//

#import "DisplayLinkButton.h"

@interface DisplayLinkButton () {
    CADisplayLink *_displayLink;
}

@end

@implementation DisplayLinkButton

- (void)start {
    _displayLink = [CADisplayLink displayLinkWithTarget:self
                                               selector:@selector(countDown)];
    _displayLink.frameInterval = 60;
    [_displayLink addToRunLoop:[NSRunLoop currentRunLoop]
                       forMode:NSDefaultRunLoopMode];
}

- (void)stop {
    [_displayLink removeFromRunLoop:[NSRunLoop currentRunLoop]
                            forMode:NSDefaultRunLoopMode];
    [_displayLink invalidate];
}

#pragma mark -

- (void)countDown {
    if (self.ticks > 0) {
        --self.ticks;
        [self sendActionsForControlEvents:UIControlEventValueChanged];
    }
    if (self.ticks <= 0) {
        [self stop];
    }
}

@end
