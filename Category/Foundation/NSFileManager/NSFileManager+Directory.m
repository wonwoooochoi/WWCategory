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
	NSString *path = [directory stringByAppendingPathComponent:name];
	return path;
}


+ (NSArray *)filesInDirectory:(NSString *)directory {
	NSArray *files = [self.defaultManager contentsOfDirectoryAtPath:directory error:nil];
	return files;
}


#pragma mark - Determining Access

+ (BOOL)fileExistsAtDirctory:(NSString *)directory fileName:(NSString *)name {
	
	NSString *path = [self filePathWithName:name inDirectory:directory];
	BOOL exists = [self.defaultManager fileExistsAtPath:path];
	
	return exists;
	
}


#pragma mark - Creating

+ (BOOL)createDirectoryWithName:(NSString *)name inDirectory:(NSString *)directory error:(NSError **)error {
	BOOL success = [self.defaultManager createDirectoryAtPath:[directory stringByAppendingPathComponent:name]
								  withIntermediateDirectories:YES
												   attributes:nil
														error:error];
	return success;
}


#pragma mark - Private

+ (NSString *)searchPathDirectory:(NSSearchPathDirectory)directory {
	
	NSArray *paths = NSSearchPathForDirectoriesInDomains(directory, NSUserDomainMask, YES);
	NSString *path = (paths.count > 0) ? paths[0] : nil;
	
	return path;
	
}

@end
