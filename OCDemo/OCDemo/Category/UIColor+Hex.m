//
//  UIColor+Hex.m
//  OCDemo
//
//  Created by Admin on 2019/1/20.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

#pragma mark - 十六进制字符串转 UIColor

+ (UIColor *)colorWithHex:(NSString *)hex {
    
    return [UIColor colorWithHex:hex alpha:1.0];
}

+ (UIColor *)colorWithHex:(NSString *)hex alpha:(CGFloat)alpha {
    
    // 去掉两端的空格并转换为大写字母
    NSString *cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        
        return [UIColor clearColor];
    }
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) {
        
        cString = [cString substringFromIndex:2];
    }
    
    if ([cString hasPrefix:@"#"]) {
        
        cString = [cString substringFromIndex:1];
    }
    
    if ([cString length] != 6){
        
        return [UIColor clearColor];
    }
    
    // Separate into r, g, b substrings
    NSRange range;
    range.length = 2;
    
    //r
    range.location = 0;
    NSString *rString = [cString substringWithRange:range];
    
    //g
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    //b
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((CGFloat)r / 255.0f) green:((CGFloat)g / 255.0f) blue:((CGFloat)b / 255.0f) alpha:alpha];
}

#pragma mark - 十六进制数字转 UIColor
+ (UIColor *)colorWithHexNum:(NSInteger)hex {
    
    return [UIColor colorWithHexNum:hex alpha:1.0];
}

+ (UIColor *)colorWithHexNum:(NSInteger)hex alpha:(CGFloat)alpha {
    
    CGFloat red = ((CGFloat)((hex & 0xFF0000) >> 16)) / 255.0;
    CGFloat green = ((CGFloat)((hex & 0xFF00) >> 8)) / 255.0;
    CGFloat blue = ((CGFloat)(hex & 0xFF)) / 255.0;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

#pragma mark - UIColor转十六进制字符串
+ (NSString *)hexFromUIColor:(UIColor *)color {
    
    if (CGColorGetNumberOfComponents(color.CGColor) < 4) {
        
        const CGFloat *components = CGColorGetComponents(color.CGColor);
        
        color = [UIColor colorWithRed:components[0] green:components[0] blue:components[0] alpha:components[1]];
    }
    
    if (CGColorSpaceGetModel(CGColorGetColorSpace(color.CGColor)) != kCGColorSpaceModelRGB) {
        
        return [NSString stringWithFormat:@"#FFFFFF"];
    }
    
    NSString *hexString = [NSString stringWithFormat:@"#%x%x%x", (int)((CGColorGetComponents(color.CGColor))[0]*255.0),
            (int)((CGColorGetComponents(color.CGColor))[1]*255.0),
            (int)((CGColorGetComponents(color.CGColor))[2]*255.0)];
    
    return hexString;
}

@end
