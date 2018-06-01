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
 뮨자열을 data형식으로 변환.
 @return data 객체.
 */
@property (nonatomic, readonly) NSData *data;


/*!
 뮨자열을 Base64 인코딩된 data형식으로 변환.
 @return data 객체.
 */
@property (nonatomic, readonly) NSData *base64EncodedData;


/*!
 문자열을 Base64 인코딩.
 @return 문자열.
 */
@property (nonatomic, readonly) NSString *base64EncodedString;


/*!
 Base64 인코딩된 문자열을 디코딩.
 @return 문자열.
 */
@property (nonatomic, readonly) NSString *base64DecodedString;

@end
