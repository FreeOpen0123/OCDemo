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
    
    NSString *sandboxStr = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    
    NSString *myPath = [NSString stringWithFormat:@"%@/FMDB/",sandboxStr];
    
    NSFileManager *manager = [NSFileManager defaultManager];
    
    [manager createDirectoryAtPath:myPath withIntermediateDirectories:YES attributes:nil error:nil];
    
    NSString *path = [NSString stringWithFormat:@"%@%@.db",myPath,name];
    
    _database = [FMDatabase databaseWithPath:path];
    
    if ([_database open]) {
        
        NSLog(@"打开数据库成功");
    }else {
        
        NSLog(@"打开数据库失败");
    }
}



@end
