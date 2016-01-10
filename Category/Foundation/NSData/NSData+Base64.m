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
	
	return [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
	
}

- (NSString *)base64EncodedString {
	
	return [self base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
	
}


- (NSData *)base64EncodedData {
	
	return [self base64EncodedDataWithOptions:NSDataBase64Encoding64CharacterLineLength];
	
}

- (NSData *)base64DecodedData {
	
	return [[NSData alloc] initWithBase64EncodedData:self options:0];
	
}

@end
