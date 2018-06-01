//
//  UIView+Rounding.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Rounding)

/**
 뷰의 가장자리 코너 4군데중 선택한 코너를 라운딩 처리.
 @param roundingCorners 라운딩할 코너들.
 @param cornerRadius 라운딩 값.
 */
- (void)setRoundingCorners:(UIRectCorner)roundingCorners cornerRadius:(CGFloat)cornerRadius;

@end
