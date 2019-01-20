//
//  MainViewController.m
//  OCDemo
//
//  Created by Admin on 2019/1/20.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self createUI];
}

- (void)createUI {
    
    oneItem = [[UITabBarItem alloc]init];
    oneItem.title = NSLocalizedString(@"one", @"首页");
    oneItem.image = [[UIImage imageNamed:@"normal_25_1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    oneItem.selectedImage = [[UIImage imageNamed:@"selected_25_1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    oneHomeViewController = [[OneHomeViewController alloc]init];
    oneHomeViewController.tabBarItem = oneItem;
    oneNavController = [[UINavigationController alloc]initWithRootViewController:oneHomeViewController];
    
    twoItem = [[UITabBarItem alloc]init];
    twoItem.title = NSLocalizedString(@"two", @"次页");
    twoItem.image = [[UIImage imageNamed:@"normal_25_2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    twoItem.selectedImage = [[UIImage imageNamed:@"selected_25_2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    twoHomeViewController = [[TwoHomeViewController alloc]init];
    twoHomeViewController.tabBarItem = twoItem;
    twoNavController = [[UINavigationController alloc]initWithRootViewController:twoHomeViewController];
    
    threeItem = [[UITabBarItem alloc]init];
    threeItem.title = NSLocalizedString(@"three", @"第三页");
    threeItem.image = [[UIImage imageNamed:@"normal_25_3"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    threeItem.selectedImage = [[UIImage imageNamed:@"selected_25_3"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    threeHomeViewController = [[ThreeHomeViewController alloc]init];
    threeHomeViewController.tabBarItem = threeItem;
    threeNavController = [[UINavigationController alloc]initWithRootViewController:threeHomeViewController];
    
    fourItem = [[UITabBarItem alloc]init];
    fourItem.title = NSLocalizedString(@"four", @"第四页");
    fourItem.image = [[UIImage imageNamed:@"normal_25_4"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    fourItem.selectedImage = [[UIImage imageNamed:@"selected_25_4"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    fourHomeViewController = [[FourHomeViewController alloc]init];
    fourHomeViewController.tabBarItem = fourItem;
    fourNavController = [[UINavigationController alloc]initWithRootViewController:fourHomeViewController];
    
    self.viewControllers = @[oneNavController,twoNavController,threeNavController,fourNavController];
    
    
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
