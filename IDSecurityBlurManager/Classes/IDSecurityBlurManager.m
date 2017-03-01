//
//  IDSecurityBlurManager.m
//  SMSFinance
//
//  Created by Андрей on 26.12.16.
//  Copyright © 2016 ImproveGroup. All rights reserved.
//

#import "IDSecurityBlurManager.h"

@interface IDSecurityBlurManager ()

@property (weak, nonatomic) UIWindow *lastWindow;
@property (strong, nonatomic) UIVisualEffectView *visualEffectView;

@end

@implementation IDSecurityBlurManager

+ (instancetype)shared
{
    static IDSecurityBlurManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[[self class] alloc] init];
    });
    return sharedInstance;
}

- (void)showBlurWithStyle: (UIBlurEffectStyle) blurEffectStyle {
    [self showBlurWithStyle:blurEffectStyle animated:YES];
}

- (void)showBlurWithStyle:(UIBlurEffectStyle)blurEffectStyle animated:(BOOL)animated {
    
    self.lastWindow = [[UIApplication sharedApplication] keyWindow];
    self.visualEffectView = [[UIVisualEffectView alloc] init];
    self.visualEffectView.frame = self.lastWindow.bounds;
    [self.lastWindow.subviews.lastObject addSubview:self.visualEffectView];
    
    UIVisualEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    NSTimeInterval timeInterval = [self timeIntervalWithAnimatedState:animated];
    [UIView animateWithDuration:timeInterval animations:^{
        [self.visualEffectView setEffect:blurEffect];
    }];
}

- (void)hideBlur {
    [self hideBlurAnimated:YES];
}

- (void)hideBlurAnimated:(BOOL)animated {
    
    NSTimeInterval timeInterval = [self timeIntervalWithAnimatedState:animated];
    [UIView animateWithDuration:timeInterval animations:^{
        [self.visualEffectView setEffect:nil];
    } completion:^(BOOL finished) {
        [self.visualEffectView removeFromSuperview];
        self.visualEffectView = nil;
        self.lastWindow = nil;
    }];
}

#pragma mark - Private
- (NSTimeInterval)timeIntervalWithAnimatedState: (BOOL)animated {
    NSTimeInterval timeInterval = animated ? 0.3f : 0.0f;
    return timeInterval;
}

@end
