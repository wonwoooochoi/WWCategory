//
//  NSString+Localizing.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSString+Localizing.h"

@implementation NSString (Localizing)

- (NSString *)localizedString {
	return NSLocalizedString(self, self);
}

@end
