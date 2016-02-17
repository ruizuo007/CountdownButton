//
//  DisplayLinkButton.h
//  CountdownButton
//
//  Created by shenlong on 16/2/17.
//  Copyright © 2016年 graystone.inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface DisplayLinkButton : UIButton

@property (nonatomic, assign) NSUInteger ticks;

- (void)start;

- (void)stop;

@end
