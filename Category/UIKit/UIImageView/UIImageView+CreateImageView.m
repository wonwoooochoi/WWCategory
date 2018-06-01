//
//  UIImageView+CreateImageView.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIImageView+CreateImageView.h"
#import "UIImage+CreateImage.h"

@implementation UIImageView (CreateImageView)

- (instancetype)initWithPoint:(CGPoint)point PNGName:(NSString *)name {
	
	UIImage *image = [UIImage imageWithPNGName:name];
	
	CGRect frame = CGRectZero;
	frame.origin = point;
	frame.size = image.size;
	
	if ((self = [super initWithFrame:frame])) {
		self.image = image;
	}
	
	return self;
	
}


- (instancetype)initWithPoint:(CGPoint)point image:(UIImage *)image {
	
	CGRect frame = CGRectZero;
	frame.origin = point;
	frame.size = image.size;
	
	if ((self = [super initWithFrame:frame])) {
		self.image = image;
	}
	
	return self;
	
}


- (instancetype)initWithPNGName:(NSString *)name {
	
	UIImage *image = [UIImage imageWithPNGName:name];
	return [self initWithImage:image];
	
}

@end
