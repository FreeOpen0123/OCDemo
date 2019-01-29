//
//  UIViewController+BackButtonHandler.h
//  OCDemo
//
//  Created by Admin on 2019/1/29.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// --------添加协议------------------
@protocol BackButtonHandlerProtocol <NSObject>

@optional

//Override this method in UIViewController derived class to handle 'Back' button click
- (BOOL)navigationShouldPopOnBackButton;

@end
// ----------------------------------

@interface UIViewController (BackButtonHandler) <BackButtonHandlerProtocol>

@end

NS_ASSUME_NONNULL_END
