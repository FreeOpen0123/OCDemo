//
//  BaseViewController.h
//  OCDemo
//
//  Created by Admin on 2019/1/20.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : UIViewController
{
    UIView *toastMaskBgView;
    
    UILabel *toastLabel;
}

// Toast 提示
- (void)showToastWithMessage:(NSString *)message;
// Alert 提示
- (void)showAlertWithMessage:(NSString *)message;
// HUD 提示
- (void)showHUDWithTitle:(NSString *)title;
- (void)hideHUD;


@end

NS_ASSUME_NONNULL_END
