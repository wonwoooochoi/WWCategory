//
//  UIImage+ImageProcessing.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ImageProcessing)

- (UIImage *)grayScaleImage;
- (UIImage *)resizedFillImageWithSize:(CGSize)newSize;
- (UIImage *)resizedFitImageWithSize:(CGSize)newSize;
- (UIImage *)croppedImageWithFrame:(CGRect)frame;
- (UIImage *)setAlpha:(CGFloat)alpha;
- (UIImage *)maskedImageWithMaskImage:(UIImage *)maskImage;

@end
