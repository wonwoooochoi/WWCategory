//
//  UIApplication+Keyboard.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (Keyboard)

/**
 @brief 키보드 show / hide.
 @param force 보일지 여부.
 */
+ (BOOL)endEditing:(BOOL)force;

@end
