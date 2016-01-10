//
//  NSString+Size.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)

- (CGSize)boundingRectWithSize:(CGSize)size fontSize:(CGFloat)fontSize {
	
	NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin;
//	NSStringDrawingOptions options = NSLineBreakByWordWrapping|NSStringDrawingUsesLineFragmentOrigin;
	
	NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
	paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
	
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	attributes[NSFontAttributeName] = [UIFont systemFontOfSize:fontSize];
	attributes[NSParagraphStyleAttributeName] = paragraphStyle;
	
	return [self boundingRectWithSize:size
									  options:options
								  attributes:attributes
									  context:nil].size;
	
}

@end
