//
//  NSNotificationCenter+Notification.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNotificationCenter (Notification)

+ (void)postNotificationName:(NSString *)aName userInfo:(NSDictionary *)userInfo;
+ (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName;
+ (id)addObserverForName:(NSString *)aName usingBlock:(void (^)(NSNotification *note))block;
+ (void)removeObserver:(id)observer name:(NSString *)aName;
+ (void)removeObserver:(id)observer;

@end
