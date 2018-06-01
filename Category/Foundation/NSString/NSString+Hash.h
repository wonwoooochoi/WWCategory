//
//  NSString+Hash.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Hash)

/*!
 뮨자열을 SHA1 해시로 변환.
 @return 문자열 객체.
 */
@property (nonatomic, copy, readonly) NSString *SHA1String;

/*!
 뮨자열을 MD5 해시로 변환.
 @return 문자열 객체.
 */
@property (nonatomic, copy, readonly) NSString *MD5String;

@end
