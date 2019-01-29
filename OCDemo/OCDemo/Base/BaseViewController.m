//
//  BaseViewController.m
//  OCDemo
//
//  Created by Admin on 2019/1/20.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 设置背景色，不设置 push 页面时会卡顿
    self.view.backgroundColor = [UIColor colorWithRed:236 / 255.0 green:236 / 255.0 blue:236 / 255.0 alpha:1.0];
    
    //[self initializationCode];
}

#pragma mark - 初始化状态
- (void)initializationCode {
    
    // 状态栏变白 该方法已弃用
    //[[UIApplication sharedApplication]setStatusBarStyle:UIStatusBarStyleLightContent];
    
    //隐藏导航栏
    //[self.navigationController.navigationBar setHidden:YES];
    
    // 返回按钮文字
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc]init];
    backItem.title = NSLocalizedString(@"back", @"返回按钮文字");
    self.navigationItem.backBarButtonItem = backItem;
    
    // 设置导航栏背景色
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:42 / 255.0 green:163 / 255.0 blue:240 / 255.0 alpha:1.0]];
    self.navigationController.navigationBar.translucent = NO;
    
    // 设置导航栏按钮颜色
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    
    // 设置导航栏 title 字体大小和颜色
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:19.0],NSForegroundColorAttributeName:[UIColor whiteColor]}];

}

//设置状态栏颜色
- (UIStatusBarStyle)preferredStatusBarStyle {
    
    //return UIStatusBarStyleDefault;
    return UIStatusBarStyleLightContent;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
