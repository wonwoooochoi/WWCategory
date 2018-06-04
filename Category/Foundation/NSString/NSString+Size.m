//
//  NSString+Size.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)

- (CGSize)boundingSizeWithMaxSize:(CGSize)size fontSize:(CGFloat)fontSize {
	return [self boundingSizeWithMaxSize:size font:[UIFont systemFontOfSize:fontSize]];
}


- (CGSize)boundingSizeWithMaxSize:(CGSize)size font:(UIFont *)font {
	
	NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin;
//	NSStringDrawingOptions options = NSLineBreakByWordWrapping|NSStringDrawingUsesLineFragmentOrigin;
	
	NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
	paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
	
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	attributes[NSFontAttributeName] = font;
	attributes[NSParagraphStyleAttributeName] = paragraphStyle;
	
	CGRect rect = [self boundingRectWithSize:size options:options attributes:attributes context:nil];
	
	return rect.size;
	
}

@end
