//
//  UIImage+ImageProcessing.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIImage+ImageProcessing.h"

@implementation UIImage (ImageProcessing)

- (UIImage *)grayScaledImage {
	
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


- (UIImage *)resizedFillImageWithSize:(CGSize)newSize {
	
	CGSize reSize = newSize;
	CGFloat widthRatio = newSize.width / self.size.width;
	CGFloat heightRatio = newSize.height / self.size.height;
	
	if (self.size.width > self.size.height) {
		reSize = CGSizeMake(newSize.width, self.size.height * widthRatio);
	}
	else if (self.size.width < self.size.height) {
		reSize = CGSizeMake(self.size.width * heightRatio, newSize.height);
	}
	
	UIGraphicsBeginImageContext(newSize);
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 1.0);
	CGContextFillRect(context, CGRectMake(0, 0, newSize.width, newSize.height));
	
	[self drawInRect:CGRectIntegral(CGRectMake((newSize.width - reSize.width) / 2, (newSize.height - reSize.height) / 2, reSize.width, reSize.height))];
	
	CGContextSetInterpolationQuality(context, kCGInterpolationDefault);       // 보간
	
	UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	return newImage;
	
}


- (UIImage *)resizedFitImageWithSize:(CGSize)newSize {
	
	CGSize reSize = newSize;
	CGFloat widthRatio = newSize.width / self.size.width;
	CGFloat heightRatio = newSize.height / self.size.height;
	
	if (self.size.width > self.size.height) {
		reSize = CGSizeMake(newSize.width, self.size.height * widthRatio);
	}
	else if (self.size.width < self.size.height) {
		reSize = CGSizeMake(self.size.width * heightRatio, newSize.height);
	}
	
	UIGraphicsBeginImageContext(reSize);
	
	[self drawInRect:CGRectIntegral(CGRectMake(0, 0, reSize.width, reSize.height))];
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSetInterpolationQuality(context, kCGInterpolationDefault);       // 보간
	
	UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	return newImage;
	
}


- (UIImage *)croppedImageWithFrame:(CGRect)frame {
	
	CGImageRef imageRef = CGImageCreateWithImageInRect(self.CGImage, frame);
	UIImage *croppedImage = [UIImage imageWithCGImage:imageRef];
	CGImageRelease(imageRef);
	
	return croppedImage;
	
}


- (UIImage *)setAlpha:(CGFloat)alpha {
	
	UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0f);
	
	CGContextRef ctx = UIGraphicsGetCurrentContext();
	CGRect area = CGRectMake(0, 0, self.size.width, self.size.height);
	
	CGContextScaleCTM(ctx, 1, -1);
	CGContextTranslateCTM(ctx, 0, -area.size.height);
	CGContextSetBlendMode(ctx, kCGBlendModeMultiply);
	CGContextSetAlpha(ctx, alpha);
	CGContextDrawImage(ctx, area, self.CGImage);
	
	UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
	
	UIGraphicsEndImageContext();
	
	return newImage;
	
}


- (UIImage *)maskedImageWithMaskImage:(UIImage *)maskImage {
	
	CGImageRef imageRef = self.CGImage;
	CGImageRef maskRef = maskImage.CGImage;
	CGImageRef mask = CGImageMaskCreate(CGImageGetWidth(maskRef),
										CGImageGetHeight(maskRef),
										CGImageGetBitsPerComponent(maskRef),
										CGImageGetBitsPerPixel(maskRef),
										CGImageGetBytesPerRow(maskRef),
										CGImageGetDataProvider(maskRef),
										NULL, false);
	
	CGImageRef masked = CGImageCreateWithMask(imageRef, mask);
	CGImageRelease(mask);
	
	UIImage *maskedImage = [UIImage imageWithCGImage:masked];
	CGImageRelease(masked);
	
	return maskedImage;
	
}

@end
