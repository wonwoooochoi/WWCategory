//
//  NSString+Trim.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Trim)

/**
 @brief 문자열의 시작과 끝 부분에 있는 공백을 제거.
 @return 문자열.
 */
- (NSString *)trim;


/**
 @brief 문자열의 시작과 끝 부분에 있는 공백과 개행문자를 제거.
 @return 문자열.
 */
- (NSString *)trimWithNewLine;

@end
