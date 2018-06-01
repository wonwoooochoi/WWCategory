//
//  UIScreen+Size.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIScreen+Size.h"

@implementation UIScreen (Size)

+ (CGSize)screenSize {
	CGSize screenSize = self.mainScreen.bounds.size;
	return screenSize;
}

@end
