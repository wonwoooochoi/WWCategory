//
//  NSData+AES.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (AES)

/**
 @brief data 형식을 지정한 키로 AES256으로 암호화.
 @param key 암호화 키.
 @return 암호화된 데이터.
 */
- (NSData *)AES256EncryptWithKey:(NSString *)key;


/**
 @brief AES256으로 암호화된 data 형식을 지정한 키로 복호화.
 @param key 복호화 키.
 @return 복호화된 데이터.
 */
- (NSData *)AES256DecryptWithKey:(NSString *)key;


/**
 @brief data 형식을 지정한 키로 AES128로 암호화.
 @param key 암호화 키.
 @return 암호화된 데이터.
 */
- (NSData *)AES128EncryptWithKey:(NSString *)key;


/**
 @brief AES128로 암호화된 data 형식을 지정한 키로 복호화.
 @param key 복호화 키.
 @return 복호화된 데이터.
 */
- (NSData *)AES128DecryptWithKey:(NSString *)key;

@end
