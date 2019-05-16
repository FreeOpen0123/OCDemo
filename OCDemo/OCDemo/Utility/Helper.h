//
//  Helper.h
//  OCDemo
//
//  Created by Admin on 2019/1/29.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 这里是对该类的注释
 */

@interface Helper : NSObject

/** 把你的注释包含在这个块里。 */

/*! 把你的注释包含在这个块里。 */

/// 以三条斜杠开始的注释行


/**
 存入Plist数据

 @param object 存入的数据
 @param key key值
 */
+ (void)writePlistObject:(id)object forKey:(NSString *)key;

/**
 读取Plist数据

 @param key 存储的key值
 @return 返回值
 */
+ (id)readPlistObjectForKey:(NSString *)key;

// 存入Bool数据
+ (void)setBOOL:(BOOL)boolValue forKey:(NSString *)key;

// 读取Bool数据
+ (BOOL)boolForKey:(NSString *)key;

// 移除Plist数据
+ (void)removePlistObjectForKey:(NSString *)key;

// 生成随机颜色
+ (UIColor *)randomColor;
+ (UIColor *)randomColorWithAlpha;

// 获取 UUID
+ (NSString *)getUUID;

// Unicode 转码
+ (NSString *)UTF8StringFromUnicodeDic:(NSDictionary *)dic;


@end

NS_ASSUME_NONNULL_END
