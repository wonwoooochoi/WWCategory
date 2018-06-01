//
//  NSObject+PrintUicode.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSObject+PrintUicode.h"

@implementation NSObject (PrintUicode)

- (NSString *)descriptionForObject:(NSObject *)object locale:(id)locale indent:(NSUInteger)indent {
	
	NSString *objectString = nil;
	
	if ([object isKindOfClass:NSString.class]) {
		objectString = (NSString *)object;
	}
	else if ([object respondsToSelector:@selector(descriptionWithLocale:indent:)]) {
		objectString = [(NSDictionary *)object descriptionWithLocale:locale indent:indent];
	}
	else if ([object respondsToSelector:@selector(descriptionWithLocale:)]) {
		objectString = [(NSSet *)object descriptionWithLocale:locale];
	}
	else {
		objectString = object.description;
	}
	
	return objectString;
	
}

@end
