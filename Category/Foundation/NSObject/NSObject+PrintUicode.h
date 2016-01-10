//
//  NSObject+PrintUicode.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PrintUicode)

- (NSString *)descriptionForObject:(NSObject *)object locale:(id)locale indent:(NSUInteger)indent;

@end
