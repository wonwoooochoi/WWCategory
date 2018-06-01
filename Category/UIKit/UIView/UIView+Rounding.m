//
//  UIView+Rounding.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIView+Rounding.h"

@implementation UIView (Rounding)

- (void)setRoundingCorners:(UIRectCorner)roundingCorners cornerRadius:(CGFloat)cornerRadius {
	
	UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
												   byRoundingCorners:roundingCorners
														 cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
	
	CAShapeLayer *maskLayer = nil;
	
	if ([self.layer.mask isKindOfClass:[CAShapeLayer class]]) {
		maskLayer = (CAShapeLayer *)self.layer.mask;
	}
	else {
		maskLayer = [CAShapeLayer layer];
	}
	
	maskLayer.frame = self.bounds;
	maskLayer.path = maskPath.CGPath;
	
	self.layer.mask = maskLayer;
	
}

@end
