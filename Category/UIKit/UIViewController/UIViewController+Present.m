//
//  UIViewController+Present.m
//  WWCategory
//
//  Created by ww on 2018. 6. 4..
//  Copyright © 2018년 Won Woo Choi. All rights reserved.
//

#import "UIViewController+Present.h"

@implementation UIViewController (Present)

- (BOOL)isModal {
	BOOL isModal = (self.presentingViewController ||
					[self.presentingViewController.presentedViewController isEqual:self] ||
					[self.navigationController.presentingViewController.presentedViewController isEqual:self.navigationController] ||
					[self.tabBarController.presentingViewController isKindOfClass:UITabBarController.class]);
	return isModal;
}

@end
