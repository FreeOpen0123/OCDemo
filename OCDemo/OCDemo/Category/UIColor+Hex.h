//
//  UIColor+Hex.h
//  OCDemo
//
//  Created by Admin on 2019/1/20.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Hex)


/**
 十六进制字符串转 UIColor 不透明

 @param hex 十六进制字符串
 @return UIColor
 */
+ (UIColor *)colorWithHex:(NSString *)hex;


/**
 十六进制字符串转 UIColor 带透明度

 @param hex 十六进制字符串
 @param alpha 透明度
 @return UIColor
 */
+ (UIColor *)colorWithHex:(NSString *)hex alpha:(CGFloat)alpha;

/**
 十六进制数字转 UIColor 不透明

 @param hex 十六进制数字
 @return UIColor
 */
+ (UIColor *)colorWithHexNum:(NSInteger)hex;


/**
 十六进制数字转 UIColor 带透明度

 @param hex 十六进制数字
 @param alpha 透明度
 @return UIColor
 */
+ (UIColor *)colorWithHexNum:(NSInteger)hex alpha:(CGFloat)alpha;


/**
 UIColor 转十六进制字符串

 @param color UIColor
 @return 十六进制字符串
 */
+ (NSString *)hexFromUIColor:(UIColor *)color;



@end

NS_ASSUME_NONNULL_END
