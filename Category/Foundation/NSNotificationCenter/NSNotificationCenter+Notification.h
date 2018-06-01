//
//  NSNotificationCenter+Notification.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNotificationCenter (Register)

/*!
 알림 통지 받을 옵저버 등록.
 @param observer 옵저버 객체.
 @param selector 실행할 메서드 셀렉터.
 @param name 알림명.
 */
+ (void)addObserver:(id)observer selector:(SEL)selector name:(NSString *)name;

/*!
 알림 통지 받을 옵저버 등록.
 @param name 알림명.
 @param queue 블럭이 실행될 큐.
 @param block 실행할 함수 블럭.
 @return 옵저버 객체.
 */
+ (id)addObserverForName:(NSString *)name queue:(NSOperationQueue *)queue usingBlock:(void (^)(NSNotification *note))block;

/*!
 알림 통지 받을 옵저버 등록. 블럭을 메인 스레드에서 실행.
 @param name 알림명.
 @param queue 블럭이 실행될 큐.
 @param block 실행할 함수 블럭.
 @return 옵저버 객체.
 */
+ (id)addObserverForName:(NSString *)name usingBlock:(void (^)(NSNotification *note))block;


/*!
 알림 통지 발생.
 @param name 알림명.
 @param userObject 알림 통지시 넘길 객체.
 */
+ (void)postNotificationName:(NSString *)name userObject:(id)userObject;


/*!
 알림 통지 옵저버 제거.
 @param observer 옵저버 객체.
 @param name 알림명.
 */
+ (void)removeObserver:(id)observer name:(NSString *)name;

/*!
 알림 통지 옵저버 제거.
 @param observer 옵저버 객체.
 */
+ (void)removeObserver:(id)observer;

@end
