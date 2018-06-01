//
//  NSString+TypeChecking.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TypeChecking)

/**
 @brief 문자열이 이메일 타입인지 체크.
 @return 이메일 타입이면 YES.
 */
@property (nonatomic, readonly) BOOL isEmailType;


/**
 @brief 문자열이 전화번호 타입인지 체크.
 @return 전화번호 타입이면 YES.
 */
@property (nonatomic, readonly) BOOL isPhoneNumberType;

@end
