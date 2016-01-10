//
//  UIImage+CreateImage.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIImage+CreateImage.h"

@implementation UIImage (CreateImage)

+ (void)imageWithAssetURL:(NSURL *)url complete:(void(^)(UIImage *image))complete {
	
	ALAssetsLibrary* assetsLibrary = [[ALAssetsLibrary alloc] init];
	[assetsLibrary assetForURL:url
						resultBlock:^(ALAsset *asset) {
							
							ALAssetRepresentation *rep = [asset defaultRepresentation];
							
							@autoreleasepool {
								
								CGImageRef iref = [rep fullScreenImage];
								
								if (iref) {
									
									UIImage *image = [UIImage imageWithCGImage:iref];
									
									dispatch_async(dispatch_get_main_queue(), ^{
										
										if (complete) complete(image);
										
									});
									
									iref = nil;
								}
								
							}
							
						} failureBlock:^(NSError *error) {
							
							if (complete) complete(nil);
							
						}];
	
}


+ (UIImage *)imageWithURL:(NSURL *)url {
	
	NSData *imageData = [NSData dataWithContentsOfURL:url];
	UIImage *image = [UIImage imageWithData:imageData];
	
	return image;
	
}


+ (UIImage *)imageWithAsset:(ALAsset *)asset {
	
	CGImageRef fullScreenImage = asset.defaultRepresentation.fullScreenImage;
	UIImage *image = [UIImage imageWithCGImage:fullScreenImage];
	
	return image;
	
}


+ (UIImage *)imageWithPNGName:(NSString *)imageName {
	
	NSInteger scale = floorf([UIScreen mainScreen].scale);
	NSString *fixedImageName = imageName;
	
	if (scale > 1) {
		
		NSString *suffix = [NSString stringWithFormat:@"@%lix", scale];
		
		if (![fixedImageName hasSuffix:suffix]) {
			
			fixedImageName = [fixedImageName stringByAppendingString:suffix];
			
		}
		
	}
	
	NSString *path = [[NSBundle mainBundle] pathForResource:fixedImageName ofType:@"png"];
	
	UIImage *image = [UIImage imageWithContentsOfFile:path];
	
	return image;
	
}


+ (UIImage *)imageWithPNGName:(NSString *)imageName capInsets:(UIEdgeInsets)inset {
	
	UIImage *image = [[self imageNamed:imageName] resizableImageWithCapInsets:inset];
	//	UIImage *image = [[self imageWithPNGName:imageName] resizableImageWithCapInsets:inset];
	
	return image;
	
}


+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size {
	
	CGRect rect = CGRectMake(0, 0, size.width, size.height);
	
	UIGraphicsBeginImageContext(rect.size);
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetFillColorWithColor(context, [color CGColor]);
	//  [[UIColor colorWithRed:222./255 green:227./255 blue: 229./255 alpha:1] CGColor]);
	
	CGContextFillRect(context, rect);
	
	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	
	UIGraphicsEndImageContext();
	
	
	return image;
	
}

@end
