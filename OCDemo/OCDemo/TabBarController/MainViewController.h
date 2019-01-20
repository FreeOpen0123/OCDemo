//
//  MainViewController.h
//  OCDemo
//
//  Created by Admin on 2019/1/20.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "OneHomeViewController.h"
#import "TwoHomeViewController.h"
#import "ThreeHomeViewController.h"
#import "FourHomeViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainViewController : UITabBarController
{
    OneHomeViewController *oneHomeViewController;
    TwoHomeViewController *twoHomeViewController;
    ThreeHomeViewController *threeHomeViewController;
    FourHomeViewController *fourHomeViewController;
    
    UITabBarItem *oneItem;
    UITabBarItem *twoItem;
    UITabBarItem *threeItem;
    UITabBarItem *fourItem;
    
    UINavigationController *oneNavController;
    UINavigationController *twoNavController;
    UINavigationController *threeNavController;
    UINavigationController *fourNavController;
}

@end

NS_ASSUME_NONNULL_END
