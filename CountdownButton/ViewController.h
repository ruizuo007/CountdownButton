//
//  ViewController.h
//  CountdownButton
//
//  Created by shenlong on 16/2/17.
//  Copyright © 2016年 graystone.inc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TimerButton.h"

#import "DisplayLinkButton.h"

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet TimerButton *timerButton;

@property (nonatomic, weak) IBOutlet DisplayLinkButton *displayLinkButton;

@property (nonatomic, weak) IBOutlet UIButton *button;

@end

