//
//  NSData+AES.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSData+AES.h"
#import <CommonCrypto/CommonCryptor.h>

@implementation NSData (AES)

- (NSData *)AES256EncryptWithKey:(NSString *)key {
	
	// 'key' should be 32 bytes for AES256, will be null-padded otherwise
	char keyPtr[kCCKeySizeAES256 + 1]; // room for terminator (unused) // oorspronkelijk 256
	bzero(keyPtr, sizeof(keyPtr)); // fill with zeroes (for padding)
	
	// fetch key data
	[key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
	
	NSUInteger dataLength = self.length;
	
	//See the doc: For block ciphers, the output size will always be less than or
	//equal to the input size plus the size of one block.
	//That's why we need to add the size of one block here
	size_t bufferSize           = dataLength + kCCBlockSizeAES128;
	void* buffer                = malloc(bufferSize);
	
	size_t numBytesEncrypted    = 0;
	CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt,
										  kCCAlgorithmAES128,
										  kCCOptionPKCS7Padding,
										  keyPtr,
										  kCCKeySizeAES256, // oorspronkelijk 256
										  NULL, /* initialization vector (optional) */
										  [self bytes], dataLength, /* input */
										  buffer, bufferSize, /* output */
										  &numBytesEncrypted);
	
	NSData *data = nil;
	
	if (cryptStatus == kCCSuccess) {
		
		//the returned NSData takes ownership of the buffer and will free it on deallocation
		data = [NSData dataWithBytesNoCopy:buffer length:numBytesEncrypted];
		
	}
	
	free(buffer);
	
	return data;
	
}


- (NSData *)AES256DecryptWithKey:(NSString *)key {
	
	char keyPtr[kCCKeySizeAES256 + 1];
	bzero(keyPtr, sizeof(keyPtr));
	
	[key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
	
	NSUInteger dataLength = self.length;
	size_t bufferSize = dataLength + kCCBlockSizeAES128;
	void* buffer = malloc(bufferSize);
	
	size_t numBytesDecrypted    = 0;
	CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt,
										  kCCAlgorithmAES128,
										  kCCOptionPKCS7Padding,
										  keyPtr, kCCKeySizeAES256,
										  NULL,
										  self.bytes,
										  dataLength,
										  buffer,
										  bufferSize,
										  &numBytesDecrypted);
	
	NSData *data = nil;
	
	if (cryptStatus == kCCSuccess) {
		data = [NSData dataWithBytesNoCopy:buffer length:numBytesDecrypted];
	}
	
	free(buffer);
	
	return data;
	
}


- (NSData *)AES128EncryptWithKey:(NSString *)key {
	
	char keyPtr[kCCKeySizeAES128+1];
	bzero(keyPtr, sizeof(keyPtr));
	
	[key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
	
	NSUInteger dataLength = self.length;
	size_t bufferSize = dataLength + kCCBlockSizeAES128;
	void *buffer = malloc(bufferSize);
	size_t numBytesEncrypted = 0;
	
	CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt,
										  kCCAlgorithmAES128,
										  kCCOptionECBMode +kCCOptionPKCS7Padding,
										  keyPtr,
										  kCCKeySizeAES128,
										  nil,
										  self.bytes,
										  dataLength,
										  buffer,
										  bufferSize,
										  &numBytesEncrypted);
	
	NSData *data = nil;
	
	if (cryptStatus == kCCSuccess) {
		data = [NSData dataWithBytesNoCopy:buffer length:numBytesEncrypted];
	}
	
	free(buffer);
	
	return data;
	
}


- (NSData *)AES128DecryptWithKey:(NSString *)key {
	
	char keyPtr[kCCKeySizeAES128 + 1];
	bzero(keyPtr, sizeof(keyPtr));
	
	[key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
	
	NSUInteger dataLength = self.length;
	size_t bufferSize = dataLength + kCCBlockSizeAES128;
	void *buffer = malloc(bufferSize);
	size_t numBytesDecrypted = 0;
	
	CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt,
										  kCCAlgorithmAES128,
										  kCCOptionECBMode +kCCOptionPKCS7Padding,
										  keyPtr,
										  kCCKeySizeAES128,
										  NULL,
										  self.bytes,
										  dataLength,
										  buffer,
										  bufferSize,
										  &numBytesDecrypted);
	
	NSData *data = nil;
	
	if (cryptStatus == kCCSuccess) {
		data = [NSData dataWithBytesNoCopy:buffer length:numBytesDecrypted];
	}
	
	free(buffer);
	
	return data;
	
}

@end
