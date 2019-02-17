//
//  SizeViewController.m
//  OCDemo
//
//  Created by Admin on 2019/2/17.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "SizeViewController.h"

@interface SizeViewController ()

@end

@implementation SizeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Size";
    
    [self test];
}

- (void)test {
    
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





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
