//
//  UIStoryboard+GetInstance.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIStoryboard+GetInstance.h"

@implementation UIStoryboard (GetInstance)

+ (UIStoryboard *)storyboardWithName:(NSString *)name {
	UIStoryboard *storyboard = [UIStoryboard storyboardWithName:name bundle:NSBundle.mainBundle];
	return storyboard;
}


+ (__kindof UIViewController *)instantiateViewControllerWithIdentifier:(NSString *)identifier storyboardName:(NSString *)name {
	UIStoryboard *storyboard = [self storyboardWithName:name];
	UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:identifier];
	return viewController;
}

@end
