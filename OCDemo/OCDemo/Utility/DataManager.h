//
//  DataManager.h
//  OCDemo
//
//  Created by Admin on 2019/1/20.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DataManager : NSObject

// 未序列化 get 请求
+ (void)getDataWithURL:(NSString *)URLString parameters:(id _Nullable)parameters success:(void (^)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

// 未序列化 post 请求
+ (void)postDataWithURL:(NSString *)URLString parameters:(id _Nullable)parameters success:(void (^)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

// 序列化的 get 请求
+ (void)getJSONDataWithURL:(NSString *)URLString parameters:(id _Nullable)parameters success:(void (^)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

// 序列化的 post 请求
+ (void)postJSONDataWithURL:(NSString *)URLString parameters:(id _Nullable)parameters success:(void (^)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

// json 格式参数
+ (void)postJSONDataWithURL:(NSString *)URLString JSONParameters:(NSData *)JSONData completionHandler:(void (^)(NSURLResponse * _Nonnull response, id _Nullable responseObject, NSError * _Nullable error))completionHandler;

// 当前网络状态
+ (void)getNetworkReachabilityStatusChangeBlock:(void(^)(NSString * _Nonnull status))block;

// 上传文件

// 下载文件

// 系统方法





@end

NS_ASSUME_NONNULL_END
