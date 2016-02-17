//
//  TimerButton.m
//  CountdownButton
//
//  Created by shenlong on 16/2/17.
//  Copyright © 2016年 graystone.inc. All rights reserved.
//

#import "TimerButton.h"

@interface TimerButton () {
    NSTimer *_timer;
}

@end

@implementation TimerButton

- (void)start {
    _timer = [NSTimer scheduledTimerWithTimeInterval:1
                                              target:self
                                            selector:@selector(countDown)
                                            userInfo:nil
                                             repeats:YES];
    [_timer fire];
}

- (void)stop {
    [_timer invalidate];
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
