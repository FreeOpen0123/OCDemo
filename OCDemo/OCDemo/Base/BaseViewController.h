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
- (void)showToastWithMessage:(NSString *)message;

- (void)showAlertWithMessage:(NSString *)message;

@end

NS_ASSUME_NONNULL_END
