//
//  NSString+JSON.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JSON)

/**
 문자열 형식을 data 객체로 변환.
 문자열은 JSON 문자열이어야 함.
 @return data 객체.
 */
@property (nonatomic, readonly) NSData *JSONData;


/**
 문자열 형식을 NSDicyionary 또는 NSArray object로 변환.
 문자열은 JSON 문자열이어야 함.
 @param error 변환 오류시 반환받을 에러 객체.
 @return NSDicyionary 또는 NSArray 객체.
 */
- (id)JSONObjectWithError:(NSError **)error;

@end
