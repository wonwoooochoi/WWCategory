//
//  NSString+Base64.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Base64)

/*!
 @brief 뮨자열을 data형식으로 변환.
 @return data 객체.
 */
- (NSData *)data;


/*!
 @brief 뮨자열을 Base64 인코딩된 data형식으로 변환.
 @return data 객체.
 */
- (NSData *)base64EncodedData;


/*!
 @brief 문자열을 Base64 인코딩.
 @return 문자열.
 */
- (NSString *)base64EncodedString;


/*!
 @brief Base64 인코딩된 문자열을 디코딩.
 @return 문자열.
 */
- (NSString *)base64DecodedString;

@end
