//
//  UIBezierPath+Drawing.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBezierPath (Drawing)

/**
 호를 그림.
 @param center 중심정 좌표.
 @param radius 반지름.
 @param startDegree 시작 각.
 @param endDegree 종료 각.
 @param clockwise 시계방향 여부.
 */
- (void)addArcWithCenter:(CGPoint)center radius:(CGFloat)radius startDegree:(CGFloat)startDegree endDegree:(CGFloat)endDegree clockwise:(BOOL)clockwise;

@end
