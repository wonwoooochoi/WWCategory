//
//  NSString+URLEncoding.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (URLEncoding)

/**
 문자열을 URL encoding.
 @return 문자열 객체.
 */

@property (nonatomic, readonly) NSString *URLEncodedString;

/**
 문자열을 URL decoding.
 @return 문자열 객체.
 */
@property (nonatomic, readonly) NSString *URLDecodedString;

@end
