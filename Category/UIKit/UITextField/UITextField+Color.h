//
//  UITextField+Color.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Color)

/**
 @brief 텍스트 필드의 커서 색상.
 @param cursorColor 바꿀 색상 객체.
 @return 현재의 색상 객체.
 */
@property (nonatomic, copy) UIColor *cursorColor;

@end
