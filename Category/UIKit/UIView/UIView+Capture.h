//
//  UIView+Capture.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Capture)

/**
 현재 뷰의 화면을 이미지로 캡쳐 함.
 @return 이미지 객체.
 */
@property (nonatomic, copy, readonly) UIImage *capturedImage;

/**
 현재 뷰의 화면을 이미지로 캡쳐 함.
 @param size 캡처할 이미지의 사이즈.
 @return 이미지 객체.
 */
- (UIImage *)capturedImageWithSize:(CGSize)size;

@end
