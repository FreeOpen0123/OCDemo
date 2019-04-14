//
//  AdvertisingViewController.m
//  OCDemo
//
//  Created by Admin on 2019/4/12.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "AdvertisingViewController.h"

@interface AdvertisingViewController ()

@end

@implementation AdvertisingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self createUI];
}

#pragma mark - 创建界面
- (void)createUI {
    
    // LaunchScreen.storyboard 在横屏时文字显示不对，需要修改
    
    /*
    CGSize currentSize = CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT);
    
    CGSize iPhone_3_5_inch = CGSizeMake(320, 480);
    CGSize iPhone_4_inch = CGSizeMake(320, 568);
    CGSize iPhone_4_7_inch = CGSizeMake(375, 667);
    CGSize iPhone_5_5_inch = CGSizeMake(414, 736);
    CGSize iPhone_5_8_inch = CGSizeMake(375, 812);
    CGSize iPhone_6_1_inch = CGSizeMake(414, 896);
    CGSize iPhone_6_5_inch = CGSizeMake(414, 896);// 6.1和6.5宽高一样😂
    
    CGSize iPad_7_9_inch = CGSizeMake(768, 1024);// iPad 2 是 1x
    CGSize iPad_9_7_inch = CGSizeMake(768, 1024);// 7.9和9.7宽高一样😂
    CGSize iPad_10_5_inch = CGSizeMake(834, 1112);
    CGSize iPad_11_inch = CGSizeMake(834, 1194);
    CGSize iPad_12_9_inch = CGSizeMake(1024, 1366);
    
    if (CGSizeEqualToSize(currentSize, iPhone_3_5_inch)) {
        
        
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_4_inch)) {
        
        
    }
     */
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
