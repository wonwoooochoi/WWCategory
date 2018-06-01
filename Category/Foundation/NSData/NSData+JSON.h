//
//  NSData+JSON.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (JSON)

/**
 @brief data 형식을 JSON 문자열로 변환.
 @brief data는 JSON 문자열로 변환 가능한 형식이어야 함.
 @return 문자열.
 */
@property (nonatomic, copy, readonly) NSString *JSONString;


/**
 @brief data 형식을 NSDicyionary 또는 NSArray object로 변환.
 @brief data는 JSON 문자열로 변환 가능한 형식이어야 함.
 @param error 변환 오류시 반환받을 에러 객체.
 @return NSDicyionary 또는 NSArray 객체.
 */
- (id)JSONObjectWithError:(NSError **)error;

@end
