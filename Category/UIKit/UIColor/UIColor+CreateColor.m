//
//  UIColor+CreateColor.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "UIColor+CreateColor.h"

@implementation UIColor (CreateColor)

+ (UIColor *)colorWithHexCode:(NSString *)hexCode {
	
	NSString *arrangedCode = [hexCode stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
	arrangedCode = arrangedCode.uppercaseString;
	
	if (arrangedCode.length < 6) {
		return UIColor.blackColor;
	}
	
	NSArray *deletingCharacters = @[@"0X", @"#"];
	
	for (NSString *deletingCharacter in deletingCharacters) {
		
		if ([arrangedCode hasPrefix:deletingCharacter]) {
			arrangedCode = [arrangedCode substringFromIndex:deletingCharacter.length];
			break;
		}
		
	}
	
	if (arrangedCode.length != 6) {
		return UIColor.blackColor;
	}
	
	NSString *redCode = [arrangedCode substringWithRange:NSMakeRange(0, 2)];
	NSString *greenCode = [arrangedCode substringWithRange:NSMakeRange(2, 2)];
	NSString *blueCode = [arrangedCode substringWithRange:NSMakeRange(4, 2)];
	
	unsigned int red, green, blue = 0;
	NSScanner *redScanner = [NSScanner scannerWithString:redCode];
	NSScanner *greenScanner = [NSScanner scannerWithString:greenCode];
	NSScanner *blueScanner = [NSScanner scannerWithString:blueCode];
	[redScanner scanHexInt:&red];
	[greenScanner scanHexInt:&green];
	[blueScanner scanHexInt:&blue];
	
	return [self colorWithR:red G:green B:blue];
	
}


+ (UIColor *)colorWithR:(NSInteger)r G:(NSInteger)g B:(NSInteger)b {
	return [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0f];
}


+ (UIColor *)colorWithR:(NSInteger)r G:(NSInteger)g B:(NSInteger)b A:(NSInteger)a {
	return [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a/100.0f];
}


+ (UIColor *)randomColor {
	
	CGFloat red = (CGFloat)arc4random_uniform(255);
	CGFloat green = (CGFloat)arc4random_uniform(255);
	CGFloat blue = (CGFloat)arc4random_uniform(255);
	
	return [self colorWithR:red G:green B:blue];
	
}

@end
