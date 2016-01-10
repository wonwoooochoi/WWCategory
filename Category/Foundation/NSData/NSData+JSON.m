//
//  NSData+JSON.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSData+JSON.h"
#import "NSString+JSON.h"

@implementation NSData (JSON)

- (NSString *)JSONString {
	
	NSString *jsonString = [[NSString alloc] initWithData:self
																encoding:NSUTF8StringEncoding];
	
	return jsonString;
	
}


- (id)JSONObjectWithError:(NSError **)error {
	
	NSString *jsonString = [self JSONString];
	id object = [jsonString JSONObjectWithError:error];
	
	return object;
	
}

@end
