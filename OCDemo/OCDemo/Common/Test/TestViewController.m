//
//  TestViewController.m
//  OCDemo
//
//  Created by Admin on 2019/1/20.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"测试";
    
    [self createUI];
}

#pragma mark - 创建界面
- (void)createUI {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.backgroundColor = [UIColor lightGrayColor];
    [button setTitle:@"点我" forState:UIControlStateNormal];
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

#pragma mark - 点击事件
- (void)buttonClick:(UIButton *)button {
    
    NSString *urlStr = @"http://baike.baidu.com/api/openapi/BaikeLemmaCardApi";
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    
    [dic setValue:@"379020" forKey:@"appid"];
    
    [dic setValue:@"ios" forKey:@"bk_key"];
    
    [DataManager getJSONDataWithURL:urlStr parameters:dic success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //
        
        //NSLog(@"responseObject = %@",responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //
        
    }];
    
}



#pragma mark - 分类添加的系统返回按钮事件
- (BOOL)navigationShouldPopOnBackButton {
    
    NSLog(@"返回了");
    
    return YES;
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
