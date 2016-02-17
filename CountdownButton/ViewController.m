//
//  ViewController.m
//  CountdownButton
//
//  Created by shenlong on 16/2/17.
//  Copyright © 2016年 graystone.inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.timerButton.ticks = 1000;
    [self.timerButton addTarget:self
                         action:@selector(ticking:)
               forControlEvents:UIControlEventValueChanged];
    
    self.displayLinkButton.ticks = 1000;
    [self.displayLinkButton addTarget:self
                         action:@selector(ticking:)
               forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -

- (IBAction)onClick:(id)sender {
    
    if ([sender isEqual:self.button]) {
        [self.timerButton start];
        [self.displayLinkButton start];
    } else if ([sender isEqual:self.timerButton]) {
        [self.timerButton start];
    } else if ([sender isEqual:self.displayLinkButton]) {
        [self.displayLinkButton start];
    }
}

- (void)ticking:(id)sender {
    
    if ([sender isEqual:self.timerButton]) {
        [self.timerButton setTitle:[@(self.timerButton.ticks) stringValue] forState:UIControlStateNormal];
    } else if ([sender isEqual:self.displayLinkButton]) {
        [self.displayLinkButton setTitle:[@(self.displayLinkButton.ticks) stringValue] forState:UIControlStateNormal];
    }
}

@end
