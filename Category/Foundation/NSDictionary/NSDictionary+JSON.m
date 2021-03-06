//
//  NSDictionary+JSON.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSDictionary+JSON.h"

@implementation NSDictionary (JSON)

- (NSString *)JSONString {
	
	NSString *jsonString = nil;
	
	if ([NSJSONSerialization isValidJSONObject:self]) {
		
		NSError *error = nil;
		NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
														   options:NSJSONWritingPrettyPrinted
															 error:&error];
		
		if (jsonData) {
			jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
			jsonString = [jsonString stringByReplacingOccurrencesOfString:@"\\/" withString:@"/"];
		}
		
		if (error) {
			NSLog(@"ERROR: %@", error.localizedDescription);
		}
		
	}
	else {
		NSLog(@"ERROR: This array can't convert to JSON string");
	}
	
	return [jsonString copy];
	
}

@end
