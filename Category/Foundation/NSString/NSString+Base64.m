//
//  NSString+Base64.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSString+Base64.h"

@implementation NSString (Base64)

- (NSData *)data {
	
	return [self dataUsingEncoding:NSUTF8StringEncoding];
	
}


- (NSData *)base64EncodedData {
	
	return [[self data] base64EncodedDataWithOptions:NSDataBase64Encoding64CharacterLineLength];
	
}


- (NSString *)base64EncodedString {
	
	return [[self data] base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
	
}


- (NSString *)base64DecodedString {
	
	NSData *decodedData = [[NSData alloc] initWithBase64EncodedString:self options:0];
	return [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
	
}

@end
