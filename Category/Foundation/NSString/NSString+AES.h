//
//  NSString+AES.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AES)

/*!
 문자열을 AES256로 암호화.
 @param key 암호화 키.
 @return 암호화된 문자열.
 */
- (NSString *)AES256EncryptedStringWithKey:(NSString *)key;

/*!
 문자열을 AES256로 복호화.
 @param key 암호화 키.
 @return 복호화된 문자열.
 */
- (NSString *)AES256DecryptedStringWithKey:(NSString *)key;

/*!
 문자열을 AES128로 암호화.
 @param key 암호화 키.
 @return 암호화된 문자열.
 */
- (NSString *)AES128EncryptedStringWithKey:(NSString *)key;

/*!
 문자열을 AES128로 복호화.
 @param key 암호화 키.
 @return 복호화된 문자열.
 */
- (NSString *)AES128DecryptedStringWithKey:(NSString *)key;

@end
