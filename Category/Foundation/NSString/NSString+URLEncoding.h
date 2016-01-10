//
//  NSString+URLEncoding.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (URLEncoding)

- (NSString *)URLEncodedString;
- (NSString *)URLDecodedString;

@end