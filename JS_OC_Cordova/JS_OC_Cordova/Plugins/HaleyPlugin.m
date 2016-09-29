//
//  HaleyPlugin.m
//  HelloCordova
//
//  Created by Harvey on 16/9/28.
//
//

#import <AVFoundation/AVFoundation.h>

#import "HaleyPlugin.h"
#import "HLAudioPlayer.h"

@implementation HaleyPlugin

- (void)scan:(CDVInvokedUrlCommand *)command
{
    [self.commandDelegate runInBackground:^{
        dispatch_async(dispatch_get_main_queue(), ^{
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"原生弹窗" message:nil delegate:nil cancelButtonTitle:@"知道了" otherButtonTitles:nil, nil];
            [alertView show];
        });
    }];
}

- (void)location:(CDVInvokedUrlCommand *)command
{
    // 获取定位信息......
    
    // 下一行代码以后可以删除
//    NSString *locationStr = @"广东省深圳市南山区学府路XXXX号";
    NSString *locationStr = @"错误信息";
    
//    NSString *jsStr = [NSString stringWithFormat:@"setLocation('%@')",locationStr];
//    [self.commandDelegate evalJs:jsStr];
    
    [self.commandDelegate runInBackground:^{
        CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:locationStr];
        [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
    }];
}

- (void)pay:(CDVInvokedUrlCommand *)command
{
    // 这里是支付的相关代码......
    
    // 以下代码以后可以删除
    NSUInteger code = 1;
    NSString *tip = @"支付成功";
    NSArray *arguments = command.arguments;
    if (arguments.count < 4) {;
        code = 2;
        tip = @"参数错误";
    } else {
        NSLog(@"从H5获取的支付参数:%@",arguments);
    }
    
    NSString *jsStr = [NSString stringWithFormat:@"payResult('%@',%lu)",tip,(unsigned long)code];
    [self.commandDelegate evalJs:jsStr];
}

- (void)share:(CDVInvokedUrlCommand *)command
{
    NSUInteger code = 1;
    NSString *tip = @"分享成功";
    NSArray *arguments = command.arguments;
    if (arguments.count < 3) {;
        code = 2;
        tip = @"参数错误";
        NSString *jsStr = [NSString stringWithFormat:@"shareResult('%@')",tip];
        [self.commandDelegate evalJs:jsStr];
        return;
    }
    
    NSLog(@"从H5获取的分享参数:%@",arguments);
    NSString *title = arguments[0];
    NSString *content = arguments[1];
    NSString *url = arguments[2];
    
    // 这里是分享的相关代码......
    
    // 将分享结果返回给js
    NSString *jsStr = [NSString stringWithFormat:@"shareResult('%@','%@','%@')",title,content,url];
    [self.commandDelegate evalJs:jsStr];
}

- (void)changeColor:(CDVInvokedUrlCommand *)command
{
    NSArray *arguments = command.arguments;
    if (arguments.count < 4) {
        return;
    }
    
    CGFloat r = [arguments[0] floatValue];
    CGFloat g = [arguments[1] floatValue];
    CGFloat b = [arguments[2] floatValue];
    CGFloat a = [arguments[3] floatValue];
    
    self.viewController.view.backgroundColor = [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a];
}

- (void)shake:(CDVInvokedUrlCommand *)command
{
    [self.commandDelegate runInBackground:^{
        AudioServicesPlaySystemSound (kSystemSoundID_Vibrate);
        [HLAudioPlayer playMusic:@"shake_sound_male.wav"];
    }];
}

- (void)playSound:(CDVInvokedUrlCommand *)command
{
    NSArray *arguments = command.arguments;
    if (arguments.count < 1) {
        return;
    }
    
    [self.commandDelegate runInBackground:^{
        NSString *fileName = arguments[0];
        [HLAudioPlayer playMusic:fileName];
    }];
}

@end
