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
	NSString *URLEncodedString = [self stringByAddingPercentEncodingWithAllowedCharacters:NSCharacterSet.URLHostAllowedCharacterSet];
	return URLEncodedString;
}


- (NSString*)URLDecodedString {
	NSString *URLDecodedString = self.stringByRemovingPercentEncoding;
	return URLDecodedString;
}

@end
