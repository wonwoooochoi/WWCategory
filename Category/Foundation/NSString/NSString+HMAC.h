//
//  NSString+HMAC.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (HMAC)

/**
 HMAC SHA256 해시 문자열을 생성.
 @param key 문자열 키.
 @return 문자열.
 */
- (NSString *)SHA256WithKey:(NSString *)key;

@end
