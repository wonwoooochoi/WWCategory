//
//  NSString+AES.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AES)

- (NSString *)AES256EncryptWithKey:(NSString *)key;
- (NSString *)AES256DecryptWithKey:(NSString *)key;
- (NSString *)AES128EncryptWithKey:(NSString *)key;
- (NSString *)AES128DecryptWithKey:(NSString *)key;

@end
