//
//  UIColor+CreateColor.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIColor+CreateColor.h"

@implementation UIColor (CreateColor)

+ (UIColor *)colorWithR:(NSInteger)r G:(NSInteger)g B:(NSInteger)b {
	return [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0f];
}


+ (UIColor *)colorWithR:(NSInteger)r G:(NSInteger)g B:(NSInteger)b A:(NSInteger)a {
	return [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a/100.0f];
}


+ (UIColor *)randomColor {
	
	CGFloat red = (CGFloat)arc4random_uniform(255);
	CGFloat green = (CGFloat)arc4random_uniform(255);
	CGFloat blue = (CGFloat)arc4random_uniform(255);
	
	return [self colorWithR:red G:green B:blue];
	
}

@end
