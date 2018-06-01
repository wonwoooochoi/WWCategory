//
//  NSFileManager+Directory.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (Directory)

/*!
 @brief 시스템 디렉토리 temporary 반환.
 @return 디렉토리 경로 문자열.
 */
@property (class, nonatomic, copy, readonly) NSString *temporaryDirectory;

/*!
 @brief 시스템 디렉토리 home 반환.
 @return 디렉토리 경로 문자열.
 */
@property (class, nonatomic, copy, readonly) NSString *homeDirectory;

/*!
 @brief 시스템 디렉토리 cache 반환.
 @return 디렉토리 경로 문자열.
 */
@property (class, nonatomic, copy, readonly) NSString *cacheDirectory;

/*!
 @brief 시스템 디렉토리 document 반환.
 @return 디렉토리 경로 문자열.
 */
@property (class, nonatomic, copy, readonly) NSString *documentDirectory;


// Discovering
/*!
 @brief 파일의 경로 반환.
 @param name 파일명.
 @param directory 하위 디렉토리명.
 @return 디렉토리 경로 문자열.
 */
+ (NSString *)filePathWithName:(NSString *)name inDirectory:(NSString *)directory;

/*!
 @brief 파일들의 경로 반환.
 @param directory 하위 디렉토리명.
 @return 파일명 배열 객체.
 */
+ (NSArray *)filesInDirectory:(NSString *)directory;


// Determining Access
/*!
 @brief 지정한 파일명의 파일이 지정한 디렉토리 안에 존재하는지 여부.
 @param directory 하위 디렉토리명.
 @param name 파일명.
 @return 존재 여부.
 */
+ (BOOL)fileExistsAtDirctory:(NSString *)directory fileName:(NSString *)name;


// Creating
/*!
 @brief 지정한 파일명의 파일이 지정한 디렉토리 안에 존재하는지 여부.
 @param directory 하위 디렉토리명.
 @param name 디렉토리명.
 @param error 실패했을 경우 반환할 에러 객체.
 @return 성공 여부.
 */
+ (BOOL)createDirectoryWithName:(NSString *)name inDirectory:(NSString *)directory error:(NSError **)error;

@end
