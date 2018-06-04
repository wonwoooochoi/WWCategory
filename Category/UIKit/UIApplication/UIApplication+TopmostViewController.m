//
//  UIApplication+TopmostViewController.m
//  WWCategory
//
//  Created by ww on 2018. 6. 4..
//  Copyright © 2018년 Won Woo Choi. All rights reserved.
//

#import "UIApplication+TopmostViewController.h"

@implementation UIApplication (TopmostViewController)

#pragma mark - Public

+ (__kindof UIViewController *)topmostViewController {
	UIViewController *vc = [self topmostViewControllerOfViewController:UIApplication.sharedApplication.keyWindow.rootViewController];
	return vc;
}


#pragma mark - Private

+ (__kindof UIViewController *)topmostViewControllerOfViewController:(__kindof UIViewController *)viewController {
	
	UIViewController *vc = viewController;
	
	if ([vc isKindOfClass:UITabBarController.class]) {
		UITabBarController *tc = (UITabBarController *)vc;
		vc = tc.selectedViewController;
		if (!vc && tc.viewControllers.count > 0) {
			vc = tc.viewControllers[0];
		}
		vc = [self topmostViewControllerOfViewController:vc];
	}
	else if ([vc isKindOfClass:UINavigationController.class]) {
		UINavigationController *nc = (UINavigationController *)vc;
		vc = nc.visibleViewController;
		if (!vc && nc.viewControllers.count > 0) {
			vc = nc.viewControllers[0];
		}
		if (!vc) {
			return nc;
		}
		vc = [self topmostViewControllerOfViewController:vc];
	}
	else if ([vc isKindOfClass:UIViewController.class]) {
		if (vc.presentedViewController) {
			vc = [self topmostViewControllerOfViewController:vc.presentedViewController];
		}
	}
	
	return vc;
	
}

@end
