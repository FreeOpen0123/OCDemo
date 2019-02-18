//
//  Header.h
//  OCDemo
//
//  Created by Admin on 2019/1/20.
//  Copyright © 2019 This is my code. All rights reserved.
//

#ifndef Header_h
#define Header_h


#pragma mark - 消除 Release 模式的 NSLog

#ifdef DEBUG

#define NSLog(...) NSLog(__VA_ARGS__)

#else

#define NSLog(...)

#endif


#pragma mark - Base Class


#pragma mark - Category
#import "UIColor+Hex.h"
//#import "UIView+Layout.h"
#import "UIViewController+BackButtonHandler.h"


#pragma mark - Utility
#import "Helper.h"


#pragma mark - CocoaPods 库
#import <Masonry.h>


#pragma mark - 宏定义
// 设置颜色
#define ColorWithRGB(Red, Green, Blue) [UIColor colorWithRed:(Red) / 255.0 green:(Green) / 255.0 blue:(Blue) / 255.0 alpha:1.0]
#define ColorWithRGBA(Red, Green, Blue, Alpha) [UIColor colorWithRed:(Red)/255.0 green:(Green)/255.0 blue:(Blue)/255.0 alpha:(Alpha)]

#pragma mark - 常用尺寸
//屏幕宽
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
//屏幕高
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
//状态栏高度 20 or 44
#define STATUS_BAR_HEIGHT [[UIApplication sharedApplication]statusBarFrame].size.height
//导航栏高度 44
#define NAVIGATION_BAR_HEIGHT [[UINavigationController alloc]init].navigationBar.bounds.size.height
//标签栏高度 49
#define TAB_BAR_HEIGHT [[UITabBarController alloc]init].tabBar.bounds.size.height
//工具栏高度 44
#define TOOL_BAR_HEIGHT [[UINavigationController alloc]init].toolbar.bounds.size.height
//状态栏和导航栏整体高度
#define STATUS_NAV_HEIGHT (STATUS_BAR_HEIGHT + NAVIGATION_BAR_HEIGHT)

#pragma mark - 存储的 key 值
static NSString *const kInitDic = @"kInitDic";











#endif /* Header_h */
