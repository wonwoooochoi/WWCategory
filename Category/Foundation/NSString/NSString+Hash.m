//
//  NSString+Hash.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSString+Hash.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Hash)

- (NSString *)SHA1String {
	
	const char *cstr = [self cStringUsingEncoding:NSUTF8StringEncoding];
	NSData *data = [NSData dataWithBytes:cstr length:self.length];
	
	uint8_t digest[CC_SHA1_DIGEST_LENGTH];
	
	CC_SHA1(data.bytes, (CC_LONG)data.length, digest);
	
	NSMutableString *sha1 = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
	
	for (int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
		[sha1 appendFormat:@"%02x", digest[i]];
	}
	
	NSString *sha1String = nil;
	
	if (sha1.length > 0) {
		sha1String = [[NSString alloc] initWithString:sha1];
	}
	
	return sha1String;
	
}


- (NSString *)MD5String {
	
	const char *cStr = [self UTF8String];
	unsigned char digest[16];
	CC_MD5( cStr, (CC_LONG)strlen(cStr), digest ); // This is the md5 call
	
	NSMutableString *md5 = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
	
	for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
		[md5 appendFormat:@"%02x", digest[i]];
	}
	
	NSString *md5String = nil;
	
	if (md5.length > 0) {
		md5String = [[NSString alloc] initWithString:md5];
	}
	
	return md5String;
}


@end
