//
//  UIImage+CreateImage.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIImage+CreateImage.h"

@implementation UIImage (CreateImage)

+ (UIImage *)imageWithURL:(NSURL *)url {
	
	NSData *imageData = [NSData dataWithContentsOfURL:url];
	UIImage *image = [UIImage imageWithData:imageData];
	
	return image;
	
}


+ (UIImage *)imageWithPNGName:(NSString *)imageName {
	
	NSInteger scale = floorf(UIScreen.mainScreen.scale);
	NSString *fixedImageName = [imageName copy];
	
	if (scale > 1) {
		
		NSString *suffix = [NSString stringWithFormat:@"@%ldx", scale];
		
		if (![fixedImageName hasSuffix:suffix]) {
			fixedImageName = [fixedImageName stringByAppendingString:suffix];
		}
		
	}
	
	NSString *path = [NSBundle.mainBundle pathForResource:fixedImageName ofType:@"png"];
	UIImage *image = [UIImage imageWithContentsOfFile:path];
	
	return image;
	
}


+ (UIImage *)imageWithPNGName:(NSString *)imageName capInsets:(UIEdgeInsets)inset {
	UIImage *image = [[self imageNamed:imageName] resizableImageWithCapInsets:inset];
	return image;
}


+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size {
	
	CGRect rect = CGRectMake(0, 0, size.width, size.height);
	
	UIGraphicsBeginImageContext(rect.size);
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetFillColorWithColor(context, color.CGColor);
	CGContextFillRect(context, rect);
	
	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	
	UIGraphicsEndImageContext();
	
	return image;
	
}

@end
