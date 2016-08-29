//
//  MainViewController.m
//  JS_OC_WebViewJavascriptBridge
//
//  Created by Harvey on 16/8/4.
//  Copyright © 2016年 Haley. All rights reserved.
//

#import "MainViewController.h"
#import "WebViewController.h"
#import "WKWebViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"主页";
}

- (IBAction)btnClick1:(id)sender {
    WebViewController *webVC = [[WebViewController alloc] init];
    [self.navigationController pushViewController:webVC animated:YES];
}


- (IBAction)btnClick2:(id)sender {
    WKWebViewController *wkWebVC = [[WKWebViewController alloc] init];
    [self.navigationController pushViewController:wkWebVC animated:YES];
}

@end
