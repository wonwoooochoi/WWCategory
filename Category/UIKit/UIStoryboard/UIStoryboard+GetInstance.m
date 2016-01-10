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
	
	return [UIStoryboard storyboardWithName:name bundle:[NSBundle mainBundle]];
	
}


+ (id)instantiateViewControllerWithIdentifier:(NSString *)identifier storyboardName:(NSString *)name {
	
	return [[self storyboardWithName:name] instantiateViewControllerWithIdentifier:identifier];
	
}

@end
