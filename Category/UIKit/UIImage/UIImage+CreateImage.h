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

/**
 지정한 경로에 있는 이미지 파일의 이미지 객체 생성.
 @param url 이미지 경로 URL 객체.
 @return 이미지 객체.
 */
+ (UIImage *)imageWithURL:(NSURL *)url;

/**
 PNG파일의 파일명으로 이미지 객체 생성.
 @param imageName PNG 이미지 파일명.
 @return 이미지 객체.
 */
+ (UIImage *)imageWithPNGName:(NSString *)imageName;


/**
 PNG파일의 파일명으로 늘어날 이미지 객체 생성.
 @param imageName PNG 이미지 파일명.
 @param inset 늘어날 영역.
 @return 이미지 객체.
 */
+ (UIImage *)imageWithPNGName:(NSString *)imageName capInsets:(UIEdgeInsets)inset;


/**
 지정한 컬러와 사이즈의 이미지 객체 생성.
 @param color 컬러 객체.
 @param size 이미지 사이즈.
 @return 이미지 객체.
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

@end
