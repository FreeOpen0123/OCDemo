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
#import "UIView+Layout.h"
#import "UIViewController+BackButtonHandler.h"


#pragma mark - Utility
#import "Helper.h"
#import "DataManager.h"


#pragma mark - CocoaPods 库
#import <Masonry.h>
#import <MJRefresh.h>
#import <UIView+WebCache.h>


#pragma mark - 宏定义
// 设置颜色
#define ColorWithRGB(Red, Green, Blue) [UIColor colorWithRed:(Red) / 255.0 green:(Green) / 255.0 blue:(Blue) / 255.0 alpha:1.0]
#define ColorWithRGBA(Red, Green, Blue, Alpha) [UIColor colorWithRed:(Red)/255.0 green:(Green)/255.0 blue:(Blue)/255.0 alpha:(Alpha)]

#pragma mark - 常用尺寸
//屏幕分辨率
#define SCREEN_SCALE [UIScreen mainScreen].scale
//屏幕宽
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
//屏幕高
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
//状态栏高度 20(iPhone & iPad 普通屏) or 44(iPhone刘海屏) or 24(iPad全面屏)
#define STATUS_BAR_HEIGHT [[UIApplication sharedApplication]statusBarFrame].size.height
//导航栏高度 44(iPhone) or 50(iPad)
#define NAVIGATION_BAR_HEIGHT [[UINavigationController alloc]init].navigationBar.bounds.size.height
//标签栏高度 49(iPhone) or 50(iPad)
#define TAB_BAR_HEIGHT [[UITabBarController alloc]init].tabBar.bounds.size.height
//工具栏高度 44(iPhone) or 50(iPad)
#define TOOL_BAR_HEIGHT [[UINavigationController alloc]init].toolbar.bounds.size.height
//状态栏和导航栏整体高度
#define STATUS_NAV_HEIGHT (STATUS_BAR_HEIGHT + NAVIGATION_BAR_HEIGHT)

#pragma mark - 存储的 key 值
static NSString *const kInitDic = @"kInitDic";
static NSString *const kIsLogin = @"kIsLogin"; // isLogin 和友盟冲突
static NSString *const kIsVoice = @"kIsVoice"; // isVoice和xmpp冲突
static NSString *const kUserName = @"kUserName";
static NSString *const kUserId = @"kUserId";
static NSString *const kPlainPwd = @"kPlainPwd";
static NSString *const kCipherPwd = @"kCipherPwd";
static NSString *const kToken = @"kToken";
static NSString *const kUUID = @"kUUID";
static NSString *const kNetworkStatus = @"kNetworkStatus";


#pragma mark - 常量
static NSString *const kAppleID = @"1234567890";
static NSString *const kKeychainAccessGroup = @"";

#pragma mark - 接口 API
//static NSString *const kBaseURL = @"https://test.freeopen.cc";
static NSString *const kBaseURL = @"https://api.freeopen.cc";






#endif /* Header_h */


