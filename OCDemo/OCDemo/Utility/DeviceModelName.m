//
//  DeviceModelName.m
//  OCDemo
//
//  Created by Admin on 2019/4/15.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "DeviceModelName.h"

#import <sys/sysctl.h>
#import <sys/utsname.h>

@implementation DeviceModelName

+ (NSString *)getDeviceModel {
    
    struct utsname systemInfo;
    
    uname(&systemInfo);
    
    NSString *str = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    return str;
}

+ (NSString *)getModelName {
    
    NSString *deviceModel = [self getDeviceModel];
    
    NSDictionary *dic = [self modelNameDictionary];
    
    NSString *modelName = [dic objectForKey:deviceModel];
    
    if (modelName == nil) {
        
        modelName = [NSString stringWithFormat:@"Unknown %@",deviceModel];
    }
    
    return modelName;
}

+ (NSMutableDictionary *)modelNameDictionary {
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    
    // iPhone   31
    [dic setObject:@"iPhone" forKey:@"iPhone1,1"];
    [dic setObject:@"iPhone 3G" forKey:@"iPhone1,2"];
    [dic setObject:@"iPhone 3GS" forKey:@"iPhone2,1"];
    [dic setObject:@"iPhone 4" forKey:@"iPhone3,1"];
    [dic setObject:@"iPhone 4" forKey:@"iPhone3,2"];
    [dic setObject:@"iPhone 4" forKey:@"iPhone3,3"];
    [dic setObject:@"iPhone 4s" forKey:@"iPhone4,1"];
    [dic setObject:@"iPhone 5" forKey:@"iPhone5,1"];
    [dic setObject:@"iPhone 5" forKey:@"iPhone5,2"];
    [dic setObject:@"iPhone 5c" forKey:@"iPhone5,3"];
    [dic setObject:@"iPhone 5c" forKey:@"iPhone5,4"];
    [dic setObject:@"iPhone 5s" forKey:@"iPhone6,1"];
    [dic setObject:@"iPhone 5s" forKey:@"iPhone6,2"];
    [dic setObject:@"iPhone 6" forKey:@"iPhone7,2"];
    [dic setObject:@"iPhone 6 Plus" forKey:@"iPhone7,1"];
    [dic setObject:@"iPhone 6s" forKey:@"iPhone8,1"];
    [dic setObject:@"iPhone 6s Plus" forKey:@"iPhone8,2"];
    [dic setObject:@"iPhone SE" forKey:@"iPhone8,4"];
    [dic setObject:@"iPhone 7" forKey:@"iPhone9,1"];
    [dic setObject:@"iPhone 7" forKey:@"iPhone9,3"];
    [dic setObject:@"iPhone 7 Plus" forKey:@"iPhone9,2"];
    [dic setObject:@"iPhone 7 Plus" forKey:@"iPhone9,4"];
    [dic setObject:@"iPhone 8" forKey:@"iPhone10,1"];
    [dic setObject:@"iPhone 8" forKey:@"iPhone10,4"];
    [dic setObject:@"iPhone 8 Plus" forKey:@"iPhone10,2"];
    [dic setObject:@"iPhone 8 Plus" forKey:@"iPhone10,5"];
    [dic setObject:@"iPhone X" forKey:@"iPhone10,3"];
    [dic setObject:@"iPhone X" forKey:@"iPhone10,6"];
    [dic setObject:@"iPhone XR" forKey:@"iPhone11,8"];
    [dic setObject:@"iPhone XS" forKey:@"iPhone11,2"];
    [dic setObject:@"iPhone XS Max" forKey:@"iPhone11,6"];
    
    // iPad   38
    [dic setObject:@"iPad" forKey:@"iPad1,1"];
    [dic setObject:@"iPad 2" forKey:@"iPad2,1"];
    [dic setObject:@"iPad 2" forKey:@"iPad2,2"];
    [dic setObject:@"iPad 2" forKey:@"iPad2,3"];
    [dic setObject:@"iPad 2" forKey:@"iPad2,4"];
    [dic setObject:@"iPad (3rd generation)" forKey:@"iPad3,1"];
    [dic setObject:@"iPad (3rd generation)" forKey:@"iPad3,2"];
    [dic setObject:@"iPad (3rd generation)" forKey:@"iPad3,3"];
    [dic setObject:@"iPad (4th generation)" forKey:@"iPad3,4"];
    [dic setObject:@"iPad (4th generation)" forKey:@"iPad3,5"];
    [dic setObject:@"iPad (4th generation)" forKey:@"iPad3,6"];
    [dic setObject:@"iPad Air" forKey:@"iPad4,1"];
    [dic setObject:@"iPad Air" forKey:@"iPad4,2"];
    [dic setObject:@"iPad Air" forKey:@"iPad4,3"];
    [dic setObject:@"iPad Air 2" forKey:@"iPad5,3"];
    [dic setObject:@"iPad Air 2" forKey:@"iPad5,4"];
    [dic setObject:@"iPad Pro (12.9-inch)" forKey:@"iPad6,7"];
    [dic setObject:@"iPad Pro (12.9-inch)" forKey:@"iPad6,8"];
    [dic setObject:@"iPad Pro (9.7-inch)" forKey:@"iPad6,3"];
    [dic setObject:@"iPad Pro (9.7-inch)" forKey:@"iPad6,4"];
    [dic setObject:@"iPad (5th generation)" forKey:@"iPad6,11"];
    [dic setObject:@"iPad (5th generation)" forKey:@"iPad6,12"];
    [dic setObject:@"iPad Pro (12.9-inch) (2nd generation)" forKey:@"iPad7,1"];
    [dic setObject:@"iPad Pro (12.9-inch) (2nd generation)" forKey:@"iPad7,2"];
    [dic setObject:@"iPad Pro (10.5-inch)" forKey:@"iPad7,3"];
    [dic setObject:@"iPad Pro (10.5-inch)" forKey:@"iPad7,4"];
    [dic setObject:@"iPad (6th generation)" forKey:@"iPad7,5"];
    [dic setObject:@"iPad (6th generation)" forKey:@"iPad7,6"];
    [dic setObject:@"iPad Pro (11-inch)" forKey:@"iPad8,1"];
    [dic setObject:@"iPad Pro (11-inch)" forKey:@"iPad8,2"];
    [dic setObject:@"iPad Pro (11-inch)" forKey:@"iPad8,3"];
    [dic setObject:@"iPad Pro (11-inch)" forKey:@"iPad8,4"];
    [dic setObject:@"iPad Pro (12.9-inch) (3rd generation)" forKey:@"iPad8,5"];
    [dic setObject:@"iPad Pro (12.9-inch) (3rd generation)" forKey:@"iPad8,6"];
    [dic setObject:@"iPad Pro (12.9-inch) (3rd generation)" forKey:@"iPad8,7"];
    [dic setObject:@"iPad Pro (12.9-inch) (3rd generation)" forKey:@"iPad8,8"];
    [dic setObject:@"iPad Air (3rd generation)" forKey:@"iPad11,3"];
    [dic setObject:@"iPad Air (3rd generation)" forKey:@"iPad11,4"];
    
    // iPad mini   13
    [dic setObject:@"iPad mini" forKey:@"iPad2,5"];
    [dic setObject:@"iPad mini" forKey:@"iPad2,6"];
    [dic setObject:@"iPad mini" forKey:@"iPad2,7"];
    [dic setObject:@"iPad mini 2" forKey:@"iPad4,4"];
    [dic setObject:@"iPad mini 2" forKey:@"iPad4,5"];
    [dic setObject:@"iPad mini 2" forKey:@"iPad4,6"];
    [dic setObject:@"iPad mini 3" forKey:@"iPad4,7"];
    [dic setObject:@"iPad mini 3" forKey:@"iPad4,8"];
    [dic setObject:@"iPad mini 3" forKey:@"iPad4,9"];
    [dic setObject:@"iPad mini 4" forKey:@"iPad5,1"];
    [dic setObject:@"iPad mini 4" forKey:@"iPad5,2"];
    [dic setObject:@"iPad mini (5th generation)" forKey:@"iPad11,1"];
    [dic setObject:@"iPad mini (5th generation)" forKey:@"iPad11,2"];
    
    // iPod touch   6
    [dic setObject:@"iPod touch" forKey:@"iPod1,1"];
    [dic setObject:@"iPod touch (2nd generation)" forKey:@"iPod2,1"];
    [dic setObject:@"iPod touch (3rd generation)" forKey:@"iPod3,1"];
    [dic setObject:@"iPod touch (4th generation)" forKey:@"iPod4,1"];
    [dic setObject:@"iPod touch (5th generation)" forKey:@"iPod5,1"];
    [dic setObject:@"iPod touch (6th generation)" forKey:@"iPod7,1"];
    
    // Simulator  2
    [dic setObject:[NSString stringWithFormat:@"%@ Simulator",[UIDevice currentDevice].model] forKey:@"i386"];
    [dic setObject:[NSString stringWithFormat:@"%@ Simulator",[UIDevice currentDevice].model]  forKey:@"x86_64"];
    
    return dic;
}


@end


