//
//  Helper.h
//  OCDemo
//
//  Created by Admin on 2019/1/29.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Helper : NSObject


//存入Plist数据
+ (void)writePlistObject:(id)object forKey:(NSString *)key;

//读取Plist数据
+ (id)readPlistObjectForKey:(NSString *)key;

//存入Bool数据
+ (void)setBOOL:(BOOL)boolValue forKey:(NSString *)key;

//读取Bool数据
+ (BOOL)boolForKey:(NSString *)key;

//移除Plist数据
+ (void)removePlistObjectForKey:(NSString *)key;






@end

NS_ASSUME_NONNULL_END
