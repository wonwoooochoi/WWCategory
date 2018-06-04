//
//  UIApplication+TopmostViewController.h
//  WWCategory
//
//  Created by ww on 2018. 6. 4..
//  Copyright © 2018년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (TopmostViewController)

/**
 어플리케이션의 가장 상위에 present 되어있는 뷰컨트롤러를 찾는다.
 @return 뷰컨트롤러 객체.
 */
@property (class, nonatomic, strong, readonly) __kindof UIViewController *topmostViewController;

@end
