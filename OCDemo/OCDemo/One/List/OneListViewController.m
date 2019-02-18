//
//  OneListViewController.m
//  OCDemo
//
//  Created by Admin on 2019/2/17.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "OneListViewController.h"

#import "LifecycleViewController.h"
#import "SystemInfoViewController.h"

@interface OneListViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)UITableView *tableView;

@end

@implementation OneListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"基础列表";
    
    titleArray = @[@"Lifecycle",@"System Info",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"21",@"22",@"23",@"24",@"25"];
    
    [self createUI];
}

#pragma mark - 创建界面
- (void)createUI {
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:_tableView];
    
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.edges.mas_offset(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return titleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    cell.textLabel.text = titleArray[indexPath.row];
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case 0:
        {
            LifecycleViewController *vc = [[LifecycleViewController alloc]init];
            
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        case 1:
        {
            SystemInfoViewController *vc = [[SystemInfoViewController alloc]init];
            
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        case 2:
        {
            
        }
            break;
            
        case 3:
        {
            
        }
            break;
            
        case 4:
        {
            
        }
            break;
            
        default:
            
            NSLog(@"点击第 %li 行了",indexPath.row);
            
            break;
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
