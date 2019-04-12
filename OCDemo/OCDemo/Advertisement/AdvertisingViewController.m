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
    
    CGSize currentSize = CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT);
    
    CGSize iPhone_3_5_inch = CGSizeMake(320, 480);
    CGSize iPhone_4_inch = CGSizeMake(320, 568);
    
    if (CGSizeEqualToSize(currentSize, iPhone_3_5_inch)) {
        
        
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_4_inch)) {
        
        
    }
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
