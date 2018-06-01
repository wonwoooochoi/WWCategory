//
//  NSSet+PrintUnicode.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSSet+PrintUnicode.h"
#import "NSObject+PrintUicode.h"

@implementation NSSet (PrintUnicode)

- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level {
	
	NSMutableString *log = [NSMutableString string];
	
	if (self.count == 0) {
		[log appendString:@"There is no object."];
	}
	else {
		
		[log appendString:@"{(\n"];
		
		// indent string
		NSMutableString *indentString = [NSMutableString string];
		
		for (int i = 0; i < level; i++) {
			[indentString appendString:@"\t"];
		}
		
		// value format
		for (int i = 0; i < self.count; i++) {
			
			[log appendFormat:@"\t%@%@", indentString, [self descriptionForObject:self.allObjects[i] locale:locale indent:level + 1]];
			
			// check next value
			if (i + 1 < self.count) {
				[log appendString:@","];
			}
			
			[log appendString:@"\n"];
			
		}
		
		[log appendFormat:@"%@)}", indentString];
		
	}
	
	NSString *description = nil;
	
	if (log.length > 0) {
		description = [NSString stringWithString:log];
	}
	
	return description;
	
}

@end
