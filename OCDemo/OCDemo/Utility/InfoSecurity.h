//
//  InfoSecurity.h
//  OCDemo
//
//  Created by Admin on 2019/2/18.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InfoSecurity : NSObject


/**
 MD5

 @param string 字符串
 @return MD5 值
 */
+ (NSString *)getMD5:(NSString *)string;


/**
 AES256 加密 data 数据

 @param data data 格式的明文
 @param key 加密 key
 @return 加密结果 data格式
 */
+ (NSData *)AES256EncryptWithData:(NSData *)data forKey:(NSString *)key;

/**
 AES256 解密 data 数据

 @param data data 格式的密文
 @param key 加密 key
 @return 解密结果 data 格式
 */
+ (NSData *)AES256DecryptWithData:(NSData *)data forKey:(NSString *)key;


/**
 AES256 加密字符串，不能加密包含汉字的，原因未知，可能和包含非 UTF-8 格式 data 数据转 string 返回 nil 有关

 @param string 明文字符串
 @param key 密码 key
 @return 加密结果
 */
+ (NSString *)AES256EncryptWithString:(NSString *)string forKey:(NSString *)key;

/**
 AES256 解密字符串

 @param string 密文字符串
 @param key 密码 key
 @return 解密结果
 */
+ (NSString *)AES256DecryptWithString:(NSString *)string forKey:(NSString *)key;

// Base64
+ (NSString *)base64EncodedWithData:(NSData *)data;
+ (NSString *)base64EncodedWithString:(NSString *)string;

+ (NSData *)base64DecodedForDataWithString:(NSString *)string;
+ (NSString *)base64DecodedWithString:(NSString *)string;



/**
 生成 RSA 密钥对，密钥长度 512, 768, 1024, 2048.
 */
- (void)generateRSAKeyPair;

/**
 获取生成的 RSA 密钥，需要先生成再获取

 @return 密钥
 */
- (SecKeyRef)getRSAPublicKey;
- (SecKeyRef)getRSAPrivateKey;


/**
 RSA 加密

 @param string 要加密的字符串
 @return 加密结果，Base64格式
 */
- (NSString *)RSAEncryptWithString:(NSString *)string;
- (NSString *)RSAEncryptWithData:(NSData *)data;


- (NSString *)RSADecryptWithBase64String:(NSString *)string;


// RSA 签名

@end

NS_ASSUME_NONNULL_END
