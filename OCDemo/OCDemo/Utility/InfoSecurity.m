//
//  InfoSecurity.m
//  OCDemo
//
//  Created by Admin on 2019/2/18.
//  Copyright © 2019 This is my code. All rights reserved.
//

#import "InfoSecurity.h"

#import <CommonCrypto/CommonCrypto.h>

@implementation InfoSecurity

#pragma mark - MD5
+ (NSString *)getMD5:(NSString *)string {
    
    const char *charStr = [string UTF8String];
    
    unsigned char result[16];
    
    CC_MD5(charStr, (CC_LONG)strlen(charStr), result);
    
    return [NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",result[0],result[1],result[2],result[3],result[4],result[5],result[6],result[7],result[8],result[9],result[10],result[11],result[12],result[13],result[14],result[15]];
}

#pragma mark - AES256
+ (NSData *)AES256EncryptWithData:(NSData *)data forKey:(NSString *)key {
    
    // 'key' should be 32 bytes for AES256, will be null-padded otherwise
    
    // room for terminator (unused)
    char keyPtr[kCCKeySizeAES256 + 1];
    // fill with zeroes (for padding)
    bzero(keyPtr, sizeof(keyPtr));
    
    // fetch key data
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    
    NSUInteger dataLength = [data length];
    
    /*
     See the doc: For block ciphers, the output size will always be less than or equal to the input size plus the size of one block.That's why we need to add the size of one block here.
     */
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    
    size_t numBytesEncrypted = 0;
    
    //CCCrypt(<#CCOperation op#>, <#CCAlgorithm alg#>, <#CCOptions options#>, <#const void *key#>, <#size_t keyLength#>, <#const void *iv#>, <#const void *dataIn#>, <#size_t dataInLength#>, <#void *dataOut#>, <#size_t dataOutAvailable#>, <#size_t *dataOutMoved#>)
    CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt, kCCAlgorithmAES128, kCCOptionPKCS7Padding, keyPtr, kCCKeySizeAES256, NULL, [data bytes], dataLength, buffer, bufferSize, &numBytesEncrypted);
    
    if (cryptStatus == kCCSuccess) {
        
        //the returned NSData takes ownership of the buffer and will free it
        
        return [NSData dataWithBytesNoCopy:buffer length:numBytesEncrypted];
    }
    
    // free the buffer
    free(buffer);
    
    return nil;
}

+ (NSData *)AES256DecryptWithData:(NSData *)data forKey:(NSString *)key {
    
    // 'key' should be 32 bytes for AES256, will be null-padded otherwise
    
    // room for terminator (unused)
    char keyPtr[kCCKeySizeAES256 + 1];
    // fill with zeroes (for padding)
    bzero(keyPtr, sizeof(keyPtr));
    
    // fetch key data
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    
    NSUInteger dataLength = [data length];
    
    /*
     See the doc: For block ciphers, the output size will always be less than or equal to the input size plus the size of one block.That's why we need to add the size of one block here.
     */
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    
    size_t numBytesDecrypted = 0;
    
    // 只有 kCCDecrypt 这一个参数和加密时不同
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt, kCCAlgorithmAES128, kCCOptionPKCS7Padding, keyPtr, kCCKeySizeAES256, NULL, [data bytes], dataLength, buffer, bufferSize, &numBytesDecrypted);
    
    if (cryptStatus == kCCSuccess) {
        
        //the returned NSData takes ownership of the buffer and will free it
        
        return [NSData dataWithBytesNoCopy:buffer length:numBytesDecrypted];
    }
    
    // free the buffer
    free(buffer);
    
    return nil;
}

+ (NSString *)AES256EncryptWithString:(NSString *)string forKey:(NSString *)key {
    
    const char *charStr = [string cStringUsingEncoding:NSUTF8StringEncoding];
    
    NSData *data = [NSData dataWithBytes:charStr length:string.length];
    
    NSData *result = [InfoSecurity AES256EncryptWithData:data forKey:key];
    
    // 转换为二进制字符串
    if (result && result.length > 0) {
        
        Byte *byteData = (Byte *)[result bytes];
        
        NSMutableString *outputStr = [NSMutableString stringWithCapacity:result.length * 2];
        
        for (NSInteger i = 0; i < result.length; i++) {
            
            [outputStr appendFormat:@"%02x",byteData[i]];
        }
        
        return outputStr;
    }
    
    return nil;
}

+ (NSString *)AES256DecryptWithString:(NSString *)string forKey:(NSString *)key {
    
    // 转换为二进制 data
    NSMutableData *data = [NSMutableData dataWithCapacity:string.length / 2];
    
    unsigned char whole_byte;
    
    char byte_char[3] = {'\0','\0','\0'};
    
    for (NSInteger i = 0; i < string.length / 2; i++) {
        
        byte_char[0] = [string characterAtIndex:i * 2];
        byte_char[1] = [string characterAtIndex:i * 2 + 1];
        whole_byte = strtol(byte_char, NULL, 16);
        
        [data appendBytes:&whole_byte length:1];
    }
    
    // 对数据进行解密
    NSData *result = [InfoSecurity AES256DecryptWithData:data forKey:key];
    
    if (result && result.length > 0) {
        
        return [[NSString alloc]initWithData:result encoding:NSUTF8StringEncoding];
    }
    
    return nil;
}

#pragma mark - Base64
+ (NSString *)base64EncodedWithData:(NSData *)data {
    
    return [data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
}

+ (NSString *)base64EncodedWithString:(NSString *)string {
    
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    
    return [data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
}

+ (NSData *)base64DecodedForDataWithString:(NSString *)string {
    
    return [[NSData alloc]initWithBase64EncodedString:string options:NSDataBase64DecodingIgnoreUnknownCharacters];
}

+ (NSString *)base64DecodedWithString:(NSString *)string {
    
    NSData *data = [[NSData alloc]initWithBase64EncodedString:string options:NSDataBase64DecodingIgnoreUnknownCharacters];
    
    return[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}


@end
