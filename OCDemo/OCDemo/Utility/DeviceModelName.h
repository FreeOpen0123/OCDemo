//
//  DeviceModelName.h
//  OCDemo
//
//  Created by Admin on 2019/4/15.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DeviceModelName : NSObject

+ (NSString *)getDeviceModel;

+ (NSString *)getModelName;

+ (NSMutableDictionary *)modelNameDictionary;

@end

NS_ASSUME_NONNULL_END
