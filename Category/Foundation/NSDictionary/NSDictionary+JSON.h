//
//  NSDictionary+JSON.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JSON)

/*!
 @brief Dictionary를 JSON 형식의 문자열로 변환. Dictionary에 포함된 객체는 NSString, NSNumber 등 문자열로 변환 가능한 객체이어야 함.
 @brief ex) {a:aaa, b:bbb, c:ccc}.
 @return JSON 문자열.
 */
- (NSString *)JSONString;

@end
