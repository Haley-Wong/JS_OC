//
//  ViewController.m
//  JS_OC_Cordova
//
//  Created by Harvey on 16/9/28.
//  Copyright © 2016年 Haley. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
//    self.startPage = @"http://www.baidu.com";
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 这里空出的20，是为了不显示使用导航控制器时，控制背景色来改变状态栏背景色
    self.webView.frame = CGRectMake(0, 20, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame) - 20);
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"测试" style:UIBarButtonItemStylePlain target:self action:@selector(testClick)];
    self.navigationItem.rightBarButtonItem = rightItem;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES];

}

- (void)testClick
{
    NSString *jsStr = @"asyncAlert('哈哈啊哈')";
    [self.commandDelegate evalJs:jsStr];
}


@end
