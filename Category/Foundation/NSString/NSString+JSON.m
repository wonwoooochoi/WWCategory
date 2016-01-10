//
//  NSString+JSON.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSString+JSON.h"

@implementation NSString (JSON)

- (id)JSONData {
	
	NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
	
	return jsonData;
	
}


- (id)JSONObjectWithError:(NSError **)error {
	
	id object = [NSJSONSerialization JSONObjectWithData:[self JSONData]
															  options:NSJSONReadingMutableLeaves
																 error:error];
	
	return object;
	
}

@end
