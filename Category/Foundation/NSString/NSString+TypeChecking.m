//
//  NSString+TypeChecking.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSString+TypeChecking.h"

@implementation NSString (TypeChecking)

- (BOOL)isEmailType {
	
//	NSString *expression = @"^[A-Z0-9._%-]+@[A-Z0-9.-]+.[A-Z]{2,4}$";
	NSString *expression = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}";
	NSError *error = nil;
	BOOL isMatched = NO;
	
	NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:expression
																								  options:NSRegularExpressionCaseInsensitive
																									 error:&error];
	
	if (!error) {
		
		NSTextCheckingResult *match = [regex firstMatchInString:self options:0 range:NSMakeRange(0, self.length)];
		
		isMatched = (match.range.location != NSNotFound);
		
	}
	else {
		
		NSLog(@"error: %@", error.localizedDescription);
		
	}
	
	return isMatched;
	
}


- (BOOL)isPhoneNumberType {
	
	NSString *expression = @"^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})?[0-9]{3,4}?[0-9]{4}$";
	NSError *error = nil;
	BOOL isMatched = NO;
	
	NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:expression
																								  options:NSRegularExpressionCaseInsensitive
																									 error:&error];
	
	if (!error) {
		
		NSTextCheckingResult *match = [regex firstMatchInString:self options:0 range:NSMakeRange(0, self.length)];
		
		isMatched = (match.range.location != NSNotFound);
		
	}
	else {
		
		NSLog(@"error: %@", error.localizedDescription);
		
	}
	
	return isMatched;
	
}

@end
