//
//  OneHomeViewController.m
//  OCDemo
//
//  Created by Admin on 2019/1/20.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "OneHomeViewController.h"

#import "TestViewController.h"

@interface OneHomeViewController ()

@end

@implementation OneHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"首页";
    
    [self createUI];
}

#pragma mark - 创建界面
- (void)createUI {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 200, 100, 50);
    button.backgroundColor = [UIColor lightGrayColor];
    [button setTitle:@"点我" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClick {
    
    TestViewController *testVC = [[TestViewController alloc]init];
    
    testVC.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:testVC animated:YES];
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
