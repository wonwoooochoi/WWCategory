//
//  NSString+Size.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (Size)

/**
 문자열의 바운딩 사이즈를 계산.
 @param size 최대 바운딩 사이즈.
 @param fontSize 폰트 사이즈.
 @return 사이즈.
 */
- (CGSize)boundingSizeWithMaxSize:(CGSize)size fontSize:(CGFloat)fontSize;

/**
 문자열의 바운딩 사이즈를 계산.
 @param size 최대 바운딩 사이즈.
 @param font 폰트 객체.
 @return 사이즈.
 */
- (CGSize)boundingSizeWithMaxSize:(CGSize)size font:(UIFont *)font;

@end
