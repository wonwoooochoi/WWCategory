//
//  NSString+AES.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSString+AES.h"
#import "NSData+AES.h"

@implementation NSString (AES)

- (NSString *)AES256EncryptWithKey:(NSString *)key {
	
	NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
	NSData *encryptedData = [data AES256EncryptWithKey:key];
	NSString *encryptedString = [[NSString alloc] initWithData:encryptedData
																	  encoding:NSUTF8StringEncoding];
	
	return encryptedString;
	
}


- (NSString *)AES256DecryptWithKey:(NSString *)key {
	
	NSData *encryptedData = [self dataUsingEncoding:NSUTF8StringEncoding];
	NSData *data = [encryptedData AES256DecryptWithKey:key];
	NSString *string = [[NSString alloc] initWithData:data
														  encoding:NSUTF8StringEncoding];
	
	return string;
	
}


- (NSString *)AES128EncryptWithKey:(NSString *)key {
	
	NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
	NSData *encryptedData = [data AES128EncryptWithKey:key];
	NSString *encryptedString = [[NSString alloc] initWithData:encryptedData
																	  encoding:NSUTF8StringEncoding];
	
	return encryptedString;
	
}


- (NSString *)AES128DecryptWithKey:(NSString *)key {
	
	NSData *encryptedData = [self dataUsingEncoding:NSUTF8StringEncoding];
	NSData *data = [encryptedData AES128DecryptWithKey:key];
	NSString *string = [[NSString alloc] initWithData:data
														  encoding:NSUTF8StringEncoding];
	
	return string;
	
}

@end
