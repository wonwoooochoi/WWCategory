//
//  NSData+Base64.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Base64)

/*!
 @brief Data를 문자열로 변환. Data는 UTF8 인코딩된 뮨자열로 변환 가능한 객체이어야 함.
 @brief Base64 인코딩된 Data일 경우 Base64 인코딩된 문자열로 변환됨.
 @return 문자열.
 */
- (NSString *)string;


/*!
 @brief Data를 Base64 인코딩된 문자열로 변환.
 @return 문자열.
 */
- (NSString *)base64EncodedString;


/*!
 @brief Data를 Base64 인코딩된 data 객체로 변환.
 @return data 객체.
 */
- (NSData *)base64EncodedData;


/*!
 @brief Base64 인코딩된 Data를 디코딩.
 @return data 객체. Base64 인코딩된 객체가 아닐 경우 nil.
 */
- (NSData *)base64DecodedData;

@end
