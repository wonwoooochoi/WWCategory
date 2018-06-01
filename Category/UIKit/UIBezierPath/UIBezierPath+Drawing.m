//
//  UIBezierPath+Drawing.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIBezierPath+Drawing.h"

@implementation UIBezierPath (Drawing)

- (void)addArcWithCenter:(CGPoint)center radius:(CGFloat)radius startDegree:(CGFloat)startDegree endDegree:(CGFloat)endDegree clockwise:(BOOL)clockwise {
	[self addArcWithCenter:center radius:radius startAngle:((startDegree - 90) / 180 * M_PI) endAngle:((endDegree - 90) / 180 * M_PI) clockwise:clockwise];
}

@end
