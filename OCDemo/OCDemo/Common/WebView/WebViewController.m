//
//  WebViewController.m
//  OCDemo
//
//  Created by Admin on 2019/1/30.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "WebViewController.h"

//需要先导入头文件
#import <WebKit/WebKit.h>

@interface WebViewController ()<WKUIDelegate,WKNavigationDelegate,WKScriptMessageHandler>

@property(nonatomic,strong)WKWebView *webView;

@property(nonatomic,strong)UIProgressView *progressView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //self.title = @"WKWebView";
    self.title = _titleStr;
    
    NSLog(@"urlStr = %@",_urlStr);
    
    if (_urlStr != nil) {
        
        [_urlStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    }
    
    [self createUI];
}

#pragma mark - 创建界面
- (void)createUI {
    
    // 导航栏按钮
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"backArrow"] style:UIBarButtonItemStylePlain target:self action:@selector(backButton)];
    UIBarButtonItem *stopItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(stopButton)];
    self.navigationItem.leftBarButtonItems = @[backItem,stopItem];
    
    UIBarButtonItem *refreshItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(refreshButton)];
    self.navigationItem.rightBarButtonItem = refreshItem;
    
    _webView = [[WKWebView alloc]initWithFrame:self.view.bounds];
    _webView.backgroundColor = [UIColor lightGrayColor];
    _webView.UIDelegate = self;
    _webView.navigationDelegate = self;
    [self.view addSubview:_webView];
    
    _progressView = [[UIProgressView alloc]initWithProgressViewStyle:UIProgressViewStyleDefault];
    _progressView.tintColor = [UIColor greenColor];
    [self.view addSubview:_progressView];
    
    [_progressView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.top.right.equalTo(self.view);
    }];
    
    // 监听加载进度
    [_webView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
    // 监听标题
    [_webView addObserver:self forKeyPath:@"title" options:NSKeyValueObservingOptionNew context:nil];
    
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"]]];
}

#pragma mark - WKUIDelegate
- (nullable WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures {
    
    NSLog(@"createWebViewWithConfiguration");
    
    return 0;
}

- (void)webViewDidClose:(WKWebView *)webView {
    
    NSLog(@"webViewDidClose");
}

#pragma mark - WKNavigationDelegate
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(null_unspecified WKNavigation *)navigation {
    
    NSLog(@"didStartProvisionalNavigation");
}

- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(null_unspecified WKNavigation *)navigation {
    
    NSLog(@"didReceiveServerRedirectForProvisionalNavigation");
}

- (void)webView:(WKWebView *)webView didFailNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error {
    
    NSLog(@"didFailNavigation");
}

#pragma mark - WKScriptMessageHandler
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    
    NSLog(@"didReceiveScriptMessage");
}


#pragma mark - 监听进度条
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    if ([keyPath isEqual:@"estimatedProgress"]) {
        
        double progressNum = [[object valueForKey:keyPath] doubleValue];
        
        if (progressNum == 1) {
            
            _progressView.hidden = YES;
        }else {
            
            _progressView.hidden = NO;
        }
        
        _progressView.progress = progressNum;
    }
    else if ([keyPath isEqual:@"title"]) {
        
        if (_titleStr == nil) {
            
            self.title = _webView.title;
        }
    }
}

#pragma mark - 导航栏按钮
// 返回按钮
- (void)backButton {
    
    if (_webView.canGoBack) {
        
        [_webView goBack];
        
    }else {
        
        [self.navigationController popViewControllerAnimated:YES];
    }
}

// 关闭
- (void)stopButton {
    
    [self.navigationController popViewControllerAnimated:YES];
}

// 刷新
- (void)refreshButton {
    
    [_webView reload];
}



#pragma mark - dealloc
- (void)dealloc {
    
    // 移除监听
    [_webView removeObserver:self forKeyPath:@"estimatedProgress"];
    [_webView removeObserver:self forKeyPath:@"title"];
    
    _webView.UIDelegate = nil;
    _webView.navigationDelegate = nil;
    
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
