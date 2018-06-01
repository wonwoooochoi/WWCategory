//
//  UIApplication+Keyboard.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIApplication+Keyboard.h"

@implementation UIApplication (Keyboard)

+ (BOOL)endEditing:(BOOL)force {
	return [UIApplication.sharedApplication.keyWindow endEditing:force];
}

@end
