//
//  NSNotificationCenter+Notification.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSNotificationCenter+Notification.h"

NSString * const WWNotificationUserInfoKey	= @"WWNotificationUserInfoKey";

@implementation NSNotificationCenter (Register)

+ (void)addObserver:(id)observer selector:(SEL)selector name:(NSString *)name {
	[self.defaultCenter addObserver:observer selector:selector name:name object:nil];
}


+ (id)addObserverForName:(NSString *)name queue:(NSOperationQueue *)queue usingBlock:(void (^)(NSNotification *note))block {
	return [self.defaultCenter addObserverForName:name object:nil queue:queue usingBlock:block];
}


+ (id)addObserverForName:(NSString *)name usingBlock:(void (^)(NSNotification *note))block {
	return [[self defaultCenter] addObserverForName:name object:nil queue:NSOperationQueue.mainQueue usingBlock:block];
}


+ (void)postNotificationName:(NSString *)name userObject:(id)userObject {
	
	NSDictionary *userInfo = nil;
	
	if (userObject) {
		userInfo = @{WWNotificationUserInfoKey:[userObject copy]};
	}
	
	[self.defaultCenter postNotificationName:name object:nil userInfo:userInfo];
	
}


+ (void)removeObserver:(id)observer name:(NSString *)name {
	[self.defaultCenter removeObserver:observer name:name object:nil];
}


+ (void)removeObserver:(id)observer {
	[self.defaultCenter removeObserver:observer];
}

@end
