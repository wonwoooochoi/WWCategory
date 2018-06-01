//
//  UIScreen+Size.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (Size)

/**
 앱이 실행되는 기기의 화면 사이즈를 반환.
 @return 화면 사이즈.
 */
@property (class, nonatomic, assign, readonly) CGSize screenSize;

@end
