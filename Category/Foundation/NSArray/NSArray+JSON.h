//
//  NSArray+JSON.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (JSON)

/*!
 Array를 JSON 형식의 문자열로 변환. Array에 포함된 객체는 NSString, NSNumber 등 문자열로 변환 가능한 객체이어야 함.
 ex) [a, b, c].
 @return JSON 문자열.
 */
@property (nonatomic, copy, readonly) NSString *JSONString;

@end
