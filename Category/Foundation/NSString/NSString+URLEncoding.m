//
//  NSString+URLEncoding.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSString+URLEncoding.h"

@implementation NSString (URLEncoding)

- (NSString *)URLEncodedString {
	
	return (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
																										  (CFStringRef)self,
																										  NULL,
																										  CFSTR(":/?#[]@!$ &’()*+,;=\"<>%{}|\\^~`\n\r"),
																										  kCFStringEncodingUTF8));
	
}


- (NSString *)URLDecodedString {
	
	return [self stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
	
}

@end
