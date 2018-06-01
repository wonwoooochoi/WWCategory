//
//  UITextField+Color.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UITextField+Color.h"

@implementation UITextField (Color)

- (void)setCursorColor:(UIColor *)color {
	[[self valueForKey:@"textInputTraits"] setValue:[color copy] forKey:@"insertionPointColor"];
}


- (UIColor *)cursorColor {
	UIColor *cursorColor = [[self valueForKey:@"textInputTraits"] valueForKey:@"insertionPointColor"];
	return [cursorColor copy];
}

@end
