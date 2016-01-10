//
//  UIColor+CreateColor.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (CreateColor)

/**
 @brief 1~255의 3원색 색상값으로 컬러 객체 생성.
 @param r red, 1~255 사이의 정수.
 @param g green, 1~255 사이의 정수.
 @param b blue, 1~255 사이의 정수.
 @return 컬러 객체.
 */
+ (UIColor *)colorWithR:(NSInteger)r G:(NSInteger)g B:(NSInteger)b;


/**
 @brief 1~255의 3원색 색상값과 알파값 퍼센티지로 컬러 객체 생성.
 @param r red, 1~255 사이의 정수.
 @param g green, 1~255 사이의 정수.
 @param b blue, 1~255 사이의 정수.
 @param a alpha, 1~100 사이의 정수.
 @return 컬러 객체.
 */
+ (UIColor *)colorWithR:(NSInteger)r G:(NSInteger)g B:(NSInteger)b A:(NSInteger)a;


/**
 @brief 랜덤한 3원색의 색상으로 랜덤한 컬러 객체 생성.
 @return 컬러 객체.
 */
+ (UIColor *)randomColor;

@end
