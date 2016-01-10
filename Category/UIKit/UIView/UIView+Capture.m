//
//  UIView+Capture.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIView+Capture.h"

@implementation UIView (Capture)

- (UIImage *)captureToImage {
	
	return [self captureToImageWithSize:self.frame.size];
	
}


- (UIImage *)captureToImageWithSize:(CGSize)size {
	
//	UIGraphicsBeginImageContext(self.frame.size);
	UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
	
	[self.layer renderInContext:UIGraphicsGetCurrentContext()];
	
	UIImage *imageCapture = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	return imageCapture;
	
}

@end
