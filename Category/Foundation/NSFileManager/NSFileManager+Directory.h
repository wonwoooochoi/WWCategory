//
//  NSFileManager+Directory.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (Directory)

// System Directory
+ (NSString *)temporaryDirectory;
+ (NSString *)homeDirectory;
+ (NSString *)cacheDirectory;
+ (NSString *)documentDirectory;

// Discovering
+ (NSString *)filePathWithName:(NSString *)name inDirectory:(NSString *)directory;
+ (NSArray *)filesInDirectory:(NSString *)directory;

// Determining Access
+ (BOOL)fileExistsAtDirctory:(NSString *)directory fileName:(NSString *)name;

// Creating
+ (BOOL)createDirectoryWithName:(NSString *)name inDirectory:(NSString *)directory error:(NSError **)error;

@end
