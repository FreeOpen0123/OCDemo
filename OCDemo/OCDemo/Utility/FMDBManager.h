//
//  FMDBManager.h
//  OCDemo
//
//  Created by Admin on 2019/2/18.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <FMDB.h>

NS_ASSUME_NONNULL_BEGIN

@interface FMDBManager : NSObject

@property(nonatomic,strong)FMDatabase *database;

+ (FMDBManager *)defaultManager;

- (void)createDatabaseWithName:(NSString *)name;



@end

NS_ASSUME_NONNULL_END
