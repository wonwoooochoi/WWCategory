//
//  UIBarButtonItem+Block.h
//  WWCategory
//
//  Created by ww on 2018. 6. 4..
//  Copyright © 2018년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Block)

/**
 바버튼 타입과 블럭 액션으로 UIBarButtonItem 초기화.
 @param systemItem 바버튼 타입.
 @param action 액션 객체.
 @return 바버튼 객체.
*/
- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem action:(void(^)(void))action;

/**
 타이틀, 바버튼 타입, 블럭 액션으로 UIBarButtonItem 초기화.
 @param title 바버튼 타이틀.
 @param style 바버튼 스타일.
 @param action 액션 객체.
 @return 바버튼 객체.
 */
- (instancetype)initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style action:(void(^)(void))action;

/**
 이미지, 바버튼 타입, 블럭 액션으로 UIBarButtonItem 초기화.
 @param image 이미지 객체.
 @param style 바버튼 스타일.
 @param action 액션 객체.
 @return 바버튼 객체.
 */
- (instancetype)initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style action:(void(^)(void))action;

/**
 이미지, 바버튼 타입, 블럭 액션으로 UIBarButtonItem 초기화.
 @param image 이미지 객체.
 @param landscapeImagePhone 가로 이미지 객체.
 @param style 바버튼 스타일.
 @param action 액션 객체.
 @return 바버튼 객체.
 */
- (instancetype)initWithImage:(UIImage *)image landscapeImagePhone:(UIImage *)landscapeImagePhone style:(UIBarButtonItemStyle)style action:(void(^)(void))action;


/**
 액션 블럭 세팅.
 @param action 액션 객체.
 */
@property (nonatomic, copy) void(^action)(void);

/**
 액션 블럭 실행.
 */
- (void)runAction;

@end
