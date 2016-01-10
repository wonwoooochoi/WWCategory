//
//  UIScreen+Size.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIScreen+Size.h"

@implementation UIScreen (Size)

+ (CGSize)appSize {
	
	return [self mainScreen].applicationFrame.size;
	
}

@end
