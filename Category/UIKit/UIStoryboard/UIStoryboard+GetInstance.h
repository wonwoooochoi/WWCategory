//
//  UIStoryboard+GetInstance.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (GetInstance)

/**
 @brief 메인 번들에 있는 스토리보드의 인스턴스를 가져옴.
 @param name 스토리보드 파일명.
 @return 뷰 컨트롤러.
 */
+ (UIStoryboard *)storyboardWithName:(NSString *)name;


/**
 @brief 메인 번들에 있는 스토리보드 파일(Main.storyboard)에서 뷰 컨트롤러 인스턴스를 가져옴.
 @param identifier 뷰 컨트롤러 식별자.
 @param name 스토리보드 파일명.
 @return 뷰 컨트롤러.
 */
+ (id)instantiateViewControllerWithIdentifier:(NSString *)identifier storyboardName:(NSString *)name;

@end
