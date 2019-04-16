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
    
    // 分辨率
    CGFloat scale = SCREEN_SCALE;
    
    // 当前设备尺寸
    CGSize currentSize = CGSizeMake(SCREEN_WIDTH * scale, SCREEN_HEIGHT * scale);
    
    // iPhone 竖屏
    CGSize iPhone_3_5_Portrait = CGSizeMake(640, 960);
    CGSize iPhone_4_Portrait = CGSizeMake(640, 1136);
    CGSize iPhone_4_7_Portrait = CGSizeMake(750, 1334);
    CGSize iPhone_5_5_Portrait = CGSizeMake(1242, 2208);
    CGSize iPhone_5_8_Portrait = CGSizeMake(1125, 2436);
    CGSize iPhone_6_1_Portrait = CGSizeMake(828, 1792);
    CGSize iPhone_6_5_Portrait = CGSizeMake(1242, 2688);
    
    // iPhone 横屏
    CGSize iPhone_3_5_Landscape = CGSizeMake(960, 640);
    CGSize iPhone_4_Landscape = CGSizeMake(1136, 640);
    CGSize iPhone_4_7_Landscape = CGSizeMake(1334, 750);
    CGSize iPhone_5_5_Landscape = CGSizeMake(2208, 1242);
    CGSize iPhone_5_8_Landscape = CGSizeMake(2436, 1125);
    CGSize iPhone_6_1_Landscape = CGSizeMake(1792, 828);
    CGSize iPhone_6_5_Landscape = CGSizeMake(2688, 1242);
    
    // iPad 竖屏
    CGSize iPad_7_9_Portrait = CGSizeMake(1536, 2048);
    CGSize iPad_9_7_Portrait = CGSizeMake(1536, 2048);
    CGSize iPad_10_5_Portrait = CGSizeMake(1668, 2224);
    CGSize iPad_11_Portrait = CGSizeMake(1668, 2388);
    CGSize iPad_12_9_Portrait = CGSizeMake(2048, 2732);
    
    // iPad 横屏
    CGSize iPad_7_9_Landscape = CGSizeMake(2048, 1536);
    CGSize iPad_9_7_Landscape = CGSizeMake(2048, 1536);
    CGSize iPad_10_5_Landscape = CGSizeMake(2224, 1668);
    CGSize iPad_11_Landscape = CGSizeMake(2388, 1668);
    CGSize iPad_12_9_Landscape = CGSizeMake(2732, 2048);
    
    NSString *imageName = nil;
    
    if (CGSizeEqualToSize(currentSize, iPhone_3_5_Portrait)) {
        
        imageName = @"640x960";
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_4_Portrait)) {
        
        imageName = @"640x1136";
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_4_7_Portrait)) {
        
        imageName = @"750x1334";
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_5_5_Portrait)) {
        
        imageName = @"1242x2208";
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_5_8_Portrait)) {
        
        imageName = @"1125x2436";
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_6_1_Portrait)) {
        
        imageName = @"828x1792";
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_6_5_Portrait)) {
        
        imageName = @"1242x2688";
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_3_5_Landscape)) {
        
        imageName = @"960x640";
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_4_Landscape)) {
        
        imageName = @"1136x640";
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_4_7_Landscape)) {
        
        imageName = @"1334x750";
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_5_5_Landscape)) {
        
        imageName = @"2208x1242";
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_5_8_Landscape)) {
        
        imageName = @"2436x1125";
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_6_1_Landscape)) {
        
        imageName = @"1792x828";
    }
    else if (CGSizeEqualToSize(currentSize, iPhone_6_5_Landscape)) {
        
        imageName = @"2688x1242";
    }
    else if (CGSizeEqualToSize(currentSize, iPad_7_9_Portrait)) {
        
        imageName = @"1536x2048_7.9";
    }
    else if (CGSizeEqualToSize(currentSize, iPad_9_7_Portrait)) {
        
        imageName = @"1536x2048";
    }
    else if (CGSizeEqualToSize(currentSize, iPad_10_5_Portrait)) {
        
        imageName = @"1668x2224";
    }
    else if (CGSizeEqualToSize(currentSize, iPad_11_Portrait)) {
        
        imageName = @"1668x2388";
    }
    else if (CGSizeEqualToSize(currentSize, iPad_12_9_Portrait)) {
        
        imageName = @"2048x2732";
    }
    else if (CGSizeEqualToSize(currentSize, iPad_7_9_Landscape)) {
        
        imageName = @"2048x1536_7.9";
    }
    else if (CGSizeEqualToSize(currentSize, iPad_9_7_Landscape)) {
        
        imageName = @"2048x1536";
    }
    else if (CGSizeEqualToSize(currentSize, iPad_10_5_Landscape)) {
        
        imageName = @"2224x1668";
    }
    else if (CGSizeEqualToSize(currentSize, iPad_11_Landscape)) {
        
        imageName = @"2388x1668";
    }
    else if (CGSizeEqualToSize(currentSize, iPad_12_9_Landscape)) {
        
        imageName = @"2732x2048";
    }
    
    UIImageView *imgView = [[UIImageView alloc]init];
    imgView.image = [UIImage imageNamed:imageName];
    imgView.userInteractionEnabled = YES;
    [self.view addSubview:imgView];
    
    UITapGestureRecognizer *imgTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imgTap:)];
    [imgView addGestureRecognizer:imgTap];
    
    
    [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.edges.mas_equalTo(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor lightGrayColor];
    [button setTitle:@"跳过" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:13];
    button.layer.cornerRadius = 13;
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        
        if (@available(iOS 11.0, *)) {
            
            make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop).offset(20);
            
            make.right.equalTo(self.view.mas_safeAreaLayoutGuideRight).offset(-20);
            
        } else {
            // Fallback on earlier versions
            
            make.top.equalTo(self.view.mas_top).offset(20);
            
            make.right.equalTo(self.view.mas_right).offset(-20);
        }
        
        make.size.mas_equalTo(CGSizeMake(55, 26));
    }];
    
    [self performSelector:@selector(delayMethod) withObject:nil afterDelay:3.0];
}

#pragma mark - 点击按钮
- (void)buttonClick:(UIButton *)button {
    NSLog(@"点击按钮了");
    
    [self dismissAction];
}

#pragma mark - 点击手势
- (void)imgTap:(UITapGestureRecognizer *)tap {
    NSLog(@"点击图片了");
    
}

#pragma mark - 延迟执行
- (void)delayMethod {
    
    [self dismissAction];
}

#pragma mark - 退出当前页面
- (void)dismissAction {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - 屏幕宽高总结
- (void)summary {
    
    // LaunchScreen.storyboard 在横屏时文字显示不对，需要修改
    
    /*
    CGSize currentSize = CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT);
    
    CGSize iPhone_3_5_inch = CGSizeMake(320, 480);//宽高比 0.667
    CGSize iPhone_4_inch = CGSizeMake(320, 568);//0.563
    CGSize iPhone_4_7_inch = CGSizeMake(375, 667);//0.562
    CGSize iPhone_5_5_inch = CGSizeMake(414, 736);//0.5625
    CGSize iPhone_5_8_inch = CGSizeMake(375, 812);//0.4618
    CGSize iPhone_6_1_inch = CGSizeMake(414, 896);//0.462 //6.1和6.5宽高一样😂
    CGSize iPhone_6_5_inch = CGSizeMake(414, 896);//0.462
    
    CGSize iPad_7_9_inch = CGSizeMake(768, 1024);//0.75 //7.9和9.7宽高一样😂
    CGSize iPad_9_7_inch = CGSizeMake(768, 1024);//0.75
    CGSize iPad_10_5_inch = CGSizeMake(834, 1112);//0.75
    CGSize iPad_11_inch = CGSizeMake(834, 1194);//0.698
    CGSize iPad_12_9_inch = CGSizeMake(1024, 1366);//0.7496
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
