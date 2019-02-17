//
//  LifecycleViewController.m
//  OCDemo
//
//  Created by Admin on 2019/2/17.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "LifecycleViewController.h"

@interface LifecycleViewController ()

@end

@implementation LifecycleViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    NSLog(@"initWithNibName");
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    
    NSLog(@"initWithCoder");
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    NSLog(@"awakeFromNib");
}

- (void)loadView {
    [super loadView];
    
    NSLog(@"loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Lifecycle";
    
    NSLog(@"viewDidLoad");
    
    [self test1];
    
    [self test2];
}

- (void)test1 {
    
    NSLog(@"test1");
}

- (void)test2 {
    
    NSLog(@"test2");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSLog(@"viewWillAppear");
}
    
- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    NSLog(@"viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    NSLog(@"viewDidLayoutSubviews");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSLog(@"viewDidAppear");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    NSLog(@"viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    NSLog(@"viewDidDisappear");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Simulator --> Debug --> Simulate Memory Warning
    
    NSLog(@"didReceiveMemoryWarning");
}

- (void)dealloc {
    
    NSLog(@"dealloc");
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
