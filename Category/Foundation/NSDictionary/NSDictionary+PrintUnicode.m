//
//  NSDictionary+PrintUnicode.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSDictionary+PrintUnicode.h"
#import "NSObject+PrintUicode.h"

@implementation NSDictionary (PrintUnicode)

- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level {
	
	NSMutableString *log = [NSMutableString string];
	
	if (self.allKeys.count == 0) {
		
		[log appendString:@"0 key/value pairs"];
		
	}
	else {
		
		[log appendString:@"{\n"];
		
		// indent string
		NSMutableString *indentString = [NSMutableString string];
		
		for (int i = 0; i < level; i++) {
			
			[indentString appendString:@"\t"];
			
		}
		
		// key = value format
		id key = nil;
		for (int i = 0; i < self.count; i++) {
			
			key = self.allKeys[i];
			
			[log appendFormat:@"\t%@%@ = %@", indentString,
			 [self descriptionForObject:key locale:locale indent:level + 1],
			 [self descriptionForObject:self[key] locale:locale indent:level + 1]];
			
			// check next key
			if (i + 1 < self.count) [log appendString:@",\n"];
			else [log appendString:@"\n"];
			
		}
		
		[log appendFormat:@"%@}", indentString];
		
	}
	
	return log;
	
}

@end
