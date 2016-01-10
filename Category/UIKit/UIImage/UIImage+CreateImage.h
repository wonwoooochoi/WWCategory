//
//  UIImage+CreateImage.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>

@interface UIImage (CreateImage)

+ (void)imageWithAssetURL:(NSURL *)url complete:(void(^)(UIImage *image))complete;
+ (UIImage *)imageWithURL:(NSURL *)url;

/**
 @brief 랜덤한 3원색의 색상으로 랜덤한 컬러 객체 생성.
 @return 컬러 객체.
 */
+ (UIImage *)imageWithAsset:(ALAsset *)asset;


/**
 @brief 랜덤한 3원색의 색상으로 랜덤한 컬러 객체 생성.
 @return 컬러 객체.
 */
+ (UIImage *)imageWithPNGName:(NSString *)imageName;


/**
 @brief 랜덤한 3원색의 색상으로 랜덤한 컬러 객체 생성.
 @return 컬러 객체.
 */
+ (UIImage *)imageWithPNGName:(NSString *)imageName capInsets:(UIEdgeInsets)inset;


/**
 @brief 랜덤한 3원색의 색상으로 랜덤한 컬러 객체 생성.
 @return 컬러 객체.
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

@end
