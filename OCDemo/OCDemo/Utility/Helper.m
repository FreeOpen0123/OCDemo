//
//  Helper.m
//  OCDemo
//
//  Created by Admin on 2019/1/29.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "Helper.h"

@implementation Helper

#pragma mark - 存Plist数据
+ (void)writePlistObject:(id)object forKey:(NSString *)key {
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setObject:object forKey:key];
    
    [userDefaults synchronize];
}

#pragma mark - 读取Plist数据
+ (id)readPlistObjectForKey:(NSString *)key {
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    return [userDefaults objectForKey:key];
}

#pragma mark - 存入Bool数据
+ (void)setBOOL:(BOOL)boolValue forKey:(NSString *)key {
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setBool:boolValue forKey:key];
    
    [userDefaults synchronize];
}

#pragma mark - 读取Bool数据
+ (BOOL)boolForKey:(NSString *)key {
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    return [userDefaults boolForKey:key];
}

#pragma mark - 移除Plist数据
+ (void)removePlistObjectForKey:(NSString *)key {
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults removeObjectForKey:key];
}

#pragma mark - 生成随机颜色
+ (UIColor *)randomColor {
    
    //得到 0.00 - 255.00 之间的浮点数
    CGFloat r = arc4random()%25501 / 100.0;
    
    CGFloat g = arc4random()%25501 / 100.0;
    
    CGFloat b = arc4random()%25501 / 100.0;
    
    UIColor *color = [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0];
    
    return color;
}

+ (UIColor *)randomColorWithAlpha {
    
    CGFloat r = arc4random()%25501 / 100.0;
    
    CGFloat g = arc4random()%25501 / 100.0;
    
    CGFloat b = arc4random()%25501 / 100.0;
    
    CGFloat a = arc4random()%101 /100.0;
    
    UIColor *color = [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a];
    
    return color;
}






@end
