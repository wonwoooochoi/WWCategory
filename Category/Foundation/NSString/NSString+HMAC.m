//
//  NSString+HMAC.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSString+HMAC.h"
#import <CommonCrypto/CommonHMAC.h>

@implementation NSString (HMAC)

- (NSString *)SHA256WithKey:(NSString *)key {
	
	const char *cKey = [key cStringUsingEncoding:NSASCIIStringEncoding];
	const char *cData = [self cStringUsingEncoding:NSASCIIStringEncoding];
	
	unsigned char cHMAC[CC_SHA256_DIGEST_LENGTH];
	
	CCHmac(kCCHmacAlgSHA256, cKey, strlen(cKey), cData, strlen(cData), cHMAC);
	
	NSData *HMAC = [[NSData alloc] initWithBytes:cHMAC length:sizeof(cHMAC)];
	
	NSString *hash = HMAC.description;
	hash = [hash stringByReplacingOccurrencesOfString:@" " withString:@""];
	hash = [hash stringByReplacingOccurrencesOfString:@"<" withString:@""];
	hash = [hash stringByReplacingOccurrencesOfString:@">" withString:@""];
	
	return hash;
	
}

@end
