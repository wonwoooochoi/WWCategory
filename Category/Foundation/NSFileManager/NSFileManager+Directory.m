//
//  NSFileManager+Directory.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSFileManager+Directory.h"

@implementation NSFileManager (Directory)

#pragma mark - System Directory

+ (NSString *)temporaryDirectory {
	
	return NSTemporaryDirectory();
	
}


+ (NSString *)homeDirectory {
	
	return NSHomeDirectory();
	
}


+ (NSString *)cacheDirectory {
	
	return [self searchPathDirectory:NSCachesDirectory];
	
}


+ (NSString *)documentDirectory {
	
	return [self searchPathDirectory:NSDocumentDirectory];
	
}


#pragma mark - Discovering

+ (NSString *)filePathWithName:(NSString *)name inDirectory:(NSString *)directory {
	
	return [directory stringByAppendingPathComponent:name];
	
}


+ (NSArray *)filesInDirectory:(NSString *)directory {
	
	return [[self defaultManager] contentsOfDirectoryAtPath:directory error:nil];;
	
}


#pragma mark - Determining Access

+ (BOOL)fileExistsAtDirctory:(NSString *)directory fileName:(NSString *)name {
	
	return [[self defaultManager] fileExistsAtPath:[self filePathWithName:name inDirectory:directory]];
	
}


#pragma mark - Creating

+ (BOOL)createDirectoryWithName:(NSString *)name inDirectory:(NSString *)directory error:(NSError **)error {
	
	return [[self defaultManager] createDirectoryAtPath:[directory stringByAppendingPathComponent:name]
									withIntermediateDirectories:YES
														  attributes:nil
																 error:error];
	
}


#pragma mark - Private

+ (NSString *)searchPathDirectory:(NSSearchPathDirectory)directory {
	
	NSArray *paths = NSSearchPathForDirectoriesInDomains(directory, NSUserDomainMask, YES);
	
	return (paths.count > 0) ? paths[0] : nil;
	
}

@end
