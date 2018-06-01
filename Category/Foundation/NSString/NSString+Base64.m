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
	NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
	return data;
}


- (NSData *)base64EncodedData {
	NSData *base64EncodedData = [self.data base64EncodedDataWithOptions:NSDataBase64Encoding64CharacterLineLength];
	return base64EncodedData;
}


- (NSString *)base64EncodedString {
	NSString *base64EncodedString = [self.data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
	return base64EncodedString;
}


- (NSString *)base64DecodedString {
	NSData *base64DecodedData = [[NSData alloc] initWithBase64EncodedString:self options:0];
	NSString *base64DecodedString = [[NSString alloc] initWithData:base64EncodedData encoding:NSUTF8StringEncoding];
	return base64DecodedString;
}

@end
