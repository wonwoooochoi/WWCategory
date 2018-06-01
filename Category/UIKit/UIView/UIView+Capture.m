//
//  UIView+Capture.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIView+Capture.h"

@implementation UIView (Capture)

- (UIImage *)capturedImage {
	UIImage *capturedImage = [self capturedImageWithSize:self.frame.size];
	return capturedImage;
}


- (UIImage *)capturedImageWithSize:(CGSize)size {
	
	UIGraphicsBeginImageContextWithOptions(size, NO, UIScreen.mainScreen.scale);
	
	[self.layer renderInContext:UIGraphicsGetCurrentContext()];
	
	UIImage *capturedImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	return capturedImage;
	
}

@end
