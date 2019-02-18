//
//  SizeViewController.m
//  OCDemo
//
//  Created by Admin on 2019/2/17.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "SystemInfoViewController.h"

@interface SystemInfoViewController ()

@end

@implementation SystemInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"System Info";
    
    [self codeComment];
    
    [self sandboxPath];
    
    [self screenSize];
    
    //[self getFontName];
}

#pragma mark - 几种不同的代码注释
- (void)codeComment {
    
/**
 描述，写在 @interface 之前是对该类的注释，写在方法前是对方法的注释， option + 左键 可以看到

 @return 返回值描述
 */

/** 把你的注释包含在这个块里。 */

/*! 把你的注释包含在这个块里。 */

/// 以三条斜杠开始的注释行

// 以两条斜杠开始的注释行

}

#pragma mark - 获取沙盒路径
- (void)sandboxPath {
    
    NSArray *array = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *sandboxStr = array[0];
    
    NSLog(@"sandbox = %@",sandboxStr);
}

#pragma mark - 获取屏幕和控件尺寸
- (void)screenSize {
    
    NSLog(@"---------------------------------------------------");
    
    NSLog(@"SCREEN_WIDTH = %.2f",SCREEN_WIDTH);
    NSLog(@"SCREEN_HEIGHT = %.2f",SCREEN_HEIGHT);
    NSLog(@"STATUS_BAR_HEIGHT = %.2f",STATUS_BAR_HEIGHT);
    NSLog(@"NAVIGATION_BAR_HEIGHT = %.2f",NAVIGATION_BAR_HEIGHT);
    NSLog(@"TAB_BAR_HEIGHT = %.2f",TAB_BAR_HEIGHT);
    NSLog(@"TOOL_BAR_HEIGHT = %.2f",TOOL_BAR_HEIGHT);
    NSLog(@"STATUS_NAV_HEIGHT = %.2f",STATUS_NAV_HEIGHT);
    
    NSLog(@"---------------------------------------------------");
}

#pragma mark - 获取所有字体名字
- (void)getFontName {
    
    NSArray *familyNamesArray = [UIFont familyNames];
    
    for (NSString *familyName in familyNamesArray) {
        
        NSArray *fontNamesArray = [UIFont fontNamesForFamilyName:familyName];
        
        for (NSString *fontName in fontNamesArray) {
            
            NSLog(@"fontName = %@",fontName);
        }
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
