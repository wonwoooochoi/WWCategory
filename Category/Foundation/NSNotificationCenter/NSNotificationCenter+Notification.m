//
//  NSNotificationCenter+Notification.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "NSNotificationCenter+Notification.h"

@implementation NSNotificationCenter (Notification)

+ (void)postNotificationName:(NSString *)aName userInfo:(NSDictionary *)userInfo {
	
	[[self defaultCenter] postNotificationName:aName object:nil userInfo:userInfo];
	
}


+ (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName {
	
	[[self defaultCenter] addObserver:observer selector:aSelector name:aName object:nil];
	
}


+ (id)addObserverForName:(NSString *)aName usingBlock:(void (^)(NSNotification *note))block {
	
	return [[self defaultCenter] addObserverForName:aName object:nil queue:[NSOperationQueue mainQueue] usingBlock:block];
	
}


+ (void)removeObserver:(id)observer name:(NSString *)aName {
	
	if (observer) [[self defaultCenter] removeObserver:observer name:aName object:nil];
	
}


+ (void)removeObserver:(id)observer {
	
	if (observer) [[self defaultCenter] removeObserver:observer];
	
}

@end
