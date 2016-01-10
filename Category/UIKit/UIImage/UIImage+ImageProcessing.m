//
//  UIImage+ImageProcessing.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIImage+ImageProcessing.h"

@implementation UIImage (ImageProcessing)

- (UIImage *)grayScaleImage {
	
	// Create image rectangle with current image width/height
	CGRect imageRect = CGRectMake(0, 0, self.size.width, self.size.height);
	
	// Grayscale color space
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceGray();
	
	// Create bitmap content with current image size and grayscale colorspace
	CGContextRef context = CGBitmapContextCreate(nil, self.size.width, self.size.height, 8, 0, colorSpace, (CGBitmapInfo)kCGImageAlphaNone);
	
	// Draw image into current context, with specified rectangle
	// using previously defined context (with grayscale colorspace)
	CGContextDrawImage(context, imageRect, [self CGImage]);
	
	// Create bitmap image info from pixel data in current context
	CGImageRef imageRef = CGBitmapContextCreateImage(context);
	
	// Create a new UIImage object
	UIImage *newImage = [UIImage imageWithCGImage:imageRef];
	
	// Release colorspace, context and bitmap information
	CGColorSpaceRelease(colorSpace);
	CGContextRelease(context);
	CFRelease(imageRef);
	
	// Return the new grayscale image
	return newImage;
	
}

@end
