//
//  UIImage+ImageProcessing.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ImageProcessing)

@property (nonatomic, strong, readonly) UIImage *grayScaledImage;

/**
 @brief 입력된 사이즈의 fill 이미지로 변환.
 @param newSize 사이즈.
 @return 이미지 객체.
 */
- (UIImage *)resizedFillImageWithSize:(CGSize)newSize;

/**
 @brief 입력된 사이즈의 fit 이미지로 변환.
 @param newSize 사이즈.
 @return 이미지 객체.
 */
- (UIImage *)resizedFitImageWithSize:(CGSize)newSize;

/**
 @brief 입력된 위치와 사이즈의 이미지로 잘라내기.
 @param frame 좌표, 크기.
 @return 이미지 객체.
 */
- (UIImage *)croppedImageWithFrame:(CGRect)frame;

/**
 @brief 입력된 숫자의 알파값이 적용된 이미지로 변환.
 @param alpha 알파값. 0.0 ~ 1.0.
 @return 이미지 객체.
 */
- (UIImage *)setAlpha:(CGFloat)alpha;

/**
 @brief 입력한 이미지로 마스킹한 이미지 반환.
 @param maskImage 마스크할 이미지.
 @return 이미지 객체.
 */
- (UIImage *)maskedImageWithMaskImage:(UIImage *)maskImage;

@end
