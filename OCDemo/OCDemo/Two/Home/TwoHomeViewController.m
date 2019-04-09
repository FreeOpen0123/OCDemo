//
//  TwoHomeViewController.m
//  OCDemo
//
//  Created by Admin on 2019/1/20.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "TwoHomeViewController.h"

#import "WebViewController.h"
#import "TwoListViewController.h"

@interface TwoHomeViewController ()

@end

@implementation TwoHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = NSLocalizedString(@"SecondPage", nil);
    
    [self createUI];
}

#pragma mark - 创建界面
- (void)createUI {
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc]initWithTitle:@"Web" style:UIBarButtonItemStylePlain target:self action:@selector(rightButtonClick:)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.backgroundColor = [UIColor lightGrayColor];
    [button setTitle:@"系统方法" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.layer.cornerRadius = 3.0;
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.equalTo(self.view.mas_centerX);
        make.centerY.equalTo(self.view.mas_centerY);
        
        make.size.mas_equalTo(CGSizeMake(100, 50));
    }];
}

#pragma mark - 点击按钮
- (void)buttonClick:(UIButton *)button {
    
    TwoListViewController *vc = [[TwoListViewController alloc]init];
    
    vc.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)rightButtonClick:(UIButton *)button {
    
    WebViewController *webVC = [[WebViewController alloc]init];
    
    webVC.urlStr = @"https://www.baidu.com";
    
    webVC.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:webVC animated:YES];
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
