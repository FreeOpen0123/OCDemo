//
//  DataManager.m
//  OCDemo
//
//  Created by Admin on 2019/1/20.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "DataManager.h"

#import <AFNetworking.h>


@implementation DataManager

#pragma mark - 未序列化 get 请求
+ (void)getDataWithURL:(NSString *)URLString parameters:(id)parameters success:(void (^)(NSURLSessionDataTask * _Nonnull, id _Nullable))success failure:(void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure {
    
    // 下载管理类的对象
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    
    // 告知默认传输的数据类型(二进制)
    sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    // 设置请求超时时间
    sessionManager.requestSerializer.timeoutInterval = 30.0;
    
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/xml",@"application/json", @"text/xml", @"text/json",@"text/html",@"text/javascript", @"text/plain",@"image/jpeg", nil];
    
    [sessionManager GET:URLString parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        //
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //
        NSLog(@"getDataWithURL = %@",task.response.URL);
        
        success(task,responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //
        NSLog(@"getDataWithURLerror = %@",error.localizedDescription);
        
        failure(task,error);
    }];
}

#pragma mark - 未序列化 post 请求
+ (void)postDataWithURL:(NSString *)URLString parameters:(id)parameters success:(void (^)(NSURLSessionDataTask * _Nonnull, id _Nullable))success failure:(void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure {
    
    // 下载管理类的对象
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    
    // 告知默认传输的数据类型(二进制)
    sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    // 设置请求超时时间
    sessionManager.requestSerializer.timeoutInterval = 30.0;
    
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/xml",@"application/json", @"text/xml", @"text/json",@"text/html",@"text/javascript", @"text/plain",@"image/jpeg", nil];
    
    [sessionManager POST:URLString parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        //
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //
        NSLog(@"postDataWithURL = %@",task.response.URL);
        
        success(task,responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //
        NSLog(@"postDataWithURLerror = %@",error.localizedDescription);
        
        failure(task,error);
    }];
}

#pragma mark - 序列化的 get 请求
+ (void)getJSONDataWithURL:(NSString *)URLString parameters:(id)parameters success:(void (^)(NSURLSessionDataTask * _Nonnull, id _Nullable))success failure:(void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure {
    
    // 添加公用参数
    //[self addCommonParameters:parameters];
    
    // 下载管理类的对象
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    
    // 告知默认传输的数据类型(二进制)
    //sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    // 设置请求超时时间
    sessionManager.requestSerializer.timeoutInterval = 30.0;
    
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/xml",@"application/json", @"text/xml", @"text/json",@"text/html",@"text/javascript", @"text/plain",@"image/jpeg", nil];
    
    [sessionManager GET:URLString parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        //
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //
        NSLog(@"getJSONDataWithURL = %@",task.response.URL);
        
        success(task,responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //
        NSLog(@"getJSONDataWithURLerror = %@",error.localizedDescription);
        
        failure(task,error);
    }];
}

#pragma mark - 序列化的 post 请求
+ (void)postJSONDataWithURL:(NSString *)URLString parameters:(id)parameters success:(void (^)(NSURLSessionDataTask * _Nonnull, id _Nullable))success failure:(void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure {
    
    // 添加公用参数
    //[self addCommonParameters:parameters];
    
    // 下载管理类的对象
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    
    // 告知默认传输的数据类型(二进制)
    //sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    // 设置请求超时时间
    sessionManager.requestSerializer.timeoutInterval = 30.0;
    
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/xml",@"application/json", @"text/xml", @"text/json",@"text/html",@"text/javascript", @"text/plain",@"image/jpeg", nil];
    
    // 添加 header 参数
    //[sessionManager.requestSerializer setValue:@"123" forHTTPHeaderField:@"token"];
    
    
    [sessionManager POST:URLString parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        //
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //
        NSLog(@"postJSONDataWithURL = %@",task.response.URL);
        
        success(task,responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //
        NSLog(@"postJSONDataWithURLerror = %@",error.localizedDescription);
        
        failure(task,error);
    }];
}

#pragma mark - json 格式参数
+ (void)postJSONDataWithURL:(NSString *)URLString JSONParameters:(NSData *)JSONData completionHandler:(void (^)(NSURLResponse * _Nonnull, id _Nullable, NSError * _Nullable))completionHandler {
    
    /*
    NSDictionary *jsonDic = @{@"header":@"headerDic",@"body":@"params"};
    
    NSError *jsonError;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:jsonDic options:NSJSONWritingPrettyPrinted error:&jsonError];
    
    NSString *jsonStr = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    [request setHTTPBody:[jsonStr dataUsingEncoding:NSUTF8StringEncoding]];
     */
    
    AFURLSessionManager *sessionManager = [[AFURLSessionManager alloc]initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSMutableURLRequest *request = [[AFJSONRequestSerializer serializer]requestWithMethod:@"POST" URLString:URLString parameters:nil error:nil];
    
    //request.timeoutInterval = 30;
    
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setHTTPBody:JSONData];
    
    [[sessionManager dataTaskWithRequest:request uploadProgress:^(NSProgress * _Nonnull uploadProgress) {
        //
        
    } downloadProgress:^(NSProgress * _Nonnull downloadProgress) {
        //
        
    } completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        //
        
        completionHandler(response,responseObject,error);
        
    }] resume];
}

#pragma mark - 获取当前网络状态
+ (void)getNetworkReachabilityStatusChangeBlock:(void (^)(NSString * _Nonnull))block {
    
    [[AFNetworkReachabilityManager sharedManager]setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //
        if (status == -1) {
            
            block(@"Unknown");
        }
        else if (status == 0) {
            
            block(@"NotReachable");
        }
        else if (status == 1) {
            
            block(@"ReachableViaWWAN");
        }
        else if (status == 2) {
            
            block(@"ReachableViaWiFi");
        }
    }];
    
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}

#pragma mark - 添加公用参数
+ (void)addCommonParameters:(NSMutableDictionary *)dic {
    
    NSString *version = [[[NSBundle mainBundle]infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    NSString *bundleIdentifier = [[NSBundle mainBundle]bundleIdentifier];
    
    
    [dic setValue:bundleIdentifier forKey:@"bundleIdentifier"];
    
    [dic setValue:version forKey:@"version"];
    
    [dic setValue:@"iOS" forKey:@"platform"];
    
    [dic setValue:@"***" forKey:@"UUID"];
    
    [dic setValue:@"AppStore" forKey:@"channel"];
    
    [dic setValue:@(1) forKey:@"sockpuppet"];
    
    [dic setValue:@"zh-HK" forKey:@"language"];
    
    [dic setValue:@(2) forKey:@"NetworkStatus"];
}


@end
