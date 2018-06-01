//
//  NSData+Base64.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSData+Base64.h"

@implementation NSData (Base64)

- (NSString *)string {
	NSString *string = [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
	return string;
}


- (NSString *)base64EncodedString {
	NSString *base64EncodedString = [self base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
	return [base64EncodedString copy];
}


- (NSData *)base64EncodedData {
	NSData *base64EncodedData = [self base64EncodedDataWithOptions:NSDataBase64Encoding64CharacterLineLength];
	return [base64EncodedData copy];
}


- (NSData *)base64DecodedData {
	NSData *base64DecodedData = [[NSData alloc] initWithBase64EncodedData:self options:0];
	return base64DecodedData;
}

@end
