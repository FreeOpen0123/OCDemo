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
    
    // 导航栏透明
    //[self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc]init] forBarMetrics:UIBarMetricsDefault];
    //[self.navigationController.navigationBar setShadowImage:[UIImage new]];
    //self.navigationController.navigationBar.translucent = YES;
    
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

// 设置状态栏颜色
- (UIStatusBarStyle)preferredStatusBarStyle {
    
    //return UIStatusBarStyleDefault;
    return UIStatusBarStyleLightContent;
}

// 自定义方法
- (void)showToastWithMessage:(NSString *)message {
    
    // 放在 window 上可以跨页面显示
    UIWindow * window = [[[UIApplication sharedApplication] delegate]window];
    window.windowLevel = UIWindowLevelNormal;
    
    if (!toastMaskBgView) {
        
        toastMaskBgView = [[UIView alloc]init];
        toastMaskBgView.backgroundColor = [UIColor colorWithHex:@"#323232"];
        toastMaskBgView.layer.cornerRadius = 24;
        [window addSubview:toastMaskBgView];
        
        [toastMaskBgView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.centerX.equalTo(window.mas_centerX);
            make.height.mas_equalTo(48);
            
            if (@available(iOS 11.0, *)) {
                make.bottom.equalTo(window.mas_safeAreaLayoutGuideBottom).offset(-(self.tabBarController.tabBar.height+20));
            } else {
                // Fallback on earlier versions
                make.bottom.equalTo(window.mas_bottom).offset(-(self.tabBarController.tabBar.height+20));
            }
        }];
        
        toastLabel = [[UILabel alloc]init];
        //toastLabel.backgroundColor = [UIColor greenColor];
        toastLabel.textColor = [UIColor whiteColor];
        toastLabel.font = [UIFont systemFontOfSize:14.0];
        [toastLabel sizeToFit];
        [toastMaskBgView addSubview:toastLabel];
        
        [toastLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.centerY.equalTo(self->toastMaskBgView.mas_centerY);
            make.left.equalTo(self->toastMaskBgView.mas_left).offset(24);
            make.right.equalTo(self->toastMaskBgView.mas_right).offset(-24);
            
            make.width.mas_lessThanOrEqualTo(SCREEN_WIDTH - 40);
        }];
    }
    
    toastLabel.text = message;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self->toastMaskBgView removeFromSuperview];
        
        self->toastMaskBgView = nil;
    });
}

- (void)showAlertWithMessage:(NSString *)message {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"点击确定按钮");
    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"点击取消按钮");
    }];
    
    [alertController addAction:cancelAction];
    [alertController addAction:okAction];
    
    [self presentViewController:alertController animated:YES completion:^{
        //
        NSLog(@"弹窗出现了");
    }];
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
