//
//  FMDBManager.m
//  OCDemo
//
//  Created by Admin on 2019/2/18.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "FMDBManager.h"

@implementation FMDBManager

+ (FMDBManager *)defaultManager {
    
    static FMDBManager *fmdbManager = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        if (fmdbManager == nil) {
            
            fmdbManager = [[FMDBManager alloc]init];
        }
    });
    
    return fmdbManager;
}

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        NSLog(@"创建 FMDBManager 单例了");
    }
    
    return self;
}

- (void)createDatabaseWithName:(NSString *)name {
    
    
}



@end
