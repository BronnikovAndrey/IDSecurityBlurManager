//
//  IDSecurityBlurManager.h
//  SMSFinance
//
//  Created by Андрей on 26.12.16.
//  Copyright © 2016 ImproveGroup. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IDSecurityBlurManager : NSObject

+ (instancetype)shared;

// Animated: YES
- (void)showBlurWithStyle: (UIBlurEffectStyle) blurEffectStyle;
- (void)showBlurWithStyle: (UIBlurEffectStyle) blurEffectStyle animated: (BOOL)animated;

// Animated: YES
- (void)hideBlur;
- (void)hideBlurAnimated: (BOOL)animated;

@end
