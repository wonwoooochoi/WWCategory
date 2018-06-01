//
//  UIImageView+CreateImageView.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (CreateImageView)

/**
 이미지뷰 초기화.
 @param point 좌표.
 @param name PNG 파일명.
 @return 이미지뷰 객체.
 */
- (instancetype)initWithPoint:(CGPoint)point PNGName:(NSString *)name;

/**
 이미지뷰 초기화.
 @param point 좌표.
 @param image 이미지 객체.
 @return 이미지뷰 객체.
 */
- (instancetype)initWithPoint:(CGPoint)point image:(UIImage *)image;

/**
 이미지뷰 초기화.
 @param name PNG 파일명.
 @return 이미지뷰 객체.
 */
- (instancetype)initWithPNGName:(NSString *)name;

@end
