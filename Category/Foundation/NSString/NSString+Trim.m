//
//  NSString+Trim.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSString+Trim.h"

@implementation NSString (Trim)

- (NSString *)trim {
	
	return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
	
}


- (NSString *)trimWithNewLine {
	
	return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
	
}

@end
