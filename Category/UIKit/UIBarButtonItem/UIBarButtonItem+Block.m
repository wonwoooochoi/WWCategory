//
//  UIBarButtonItem+Block.m
//  WWCategory
//
//  Created by ww on 2018. 6. 4..
//  Copyright © 2018년 Won Woo Choi. All rights reserved.
//

#import "UIBarButtonItem+Block.h"
#import <objc/runtime.h>

#define Key_Action		@"barButtonAction"



@implementation UIBarButtonItem (Block)

#pragma mark - Initialize

- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem action:(void(^)(void))action {
	
	if (self = [self initWithBarButtonSystemItem:systemItem target:self action:@selector(barButtonAction:)]) {
		objc_setAssociatedObject(self, Key_Action, action, OBJC_ASSOCIATION_COPY_NONATOMIC);
	}
	
	return self;
	
}


- (instancetype)initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style action:(void(^)(void))action {
	
	if (self = [self initWithTitle:title style:style target:self action:@selector(barButtonAction:)]) {
		objc_setAssociatedObject(self, Key_Action, action, OBJC_ASSOCIATION_COPY_NONATOMIC);
	}
	
	return self;
	
}


- (instancetype)initWithImage:(nullable UIImage *)image style:(UIBarButtonItemStyle)style action:(void(^)(void))action {
	
	if (self = [self initWithImage:image style:style target:self action:@selector(barButtonAction:)]) {
		objc_setAssociatedObject(self, Key_Action, action, OBJC_ASSOCIATION_COPY_NONATOMIC);
	}
	
	return self;
	
}


- (instancetype)initWithImage:(UIImage *)image landscapeImagePhone:(UIImage *)landscapeImagePhone style:(UIBarButtonItemStyle)style action:(void(^)(void))action {
	
	if (self = [self initWithImage:image landscapeImagePhone:landscapeImagePhone style:style target:self action:@selector(barButtonAction:)]) {
		objc_setAssociatedObject(self, Key_Action, action, OBJC_ASSOCIATION_COPY_NONATOMIC);
	}
	
	return self;
	
}


#pragma mark - Property

- (void)setAction:(void (^)(void))action {
	
	objc_setAssociatedObject(self, Key_Action, action, OBJC_ASSOCIATION_COPY_NONATOMIC);
	
	self.target = self;
	self.action = @selector(barButtonAction:);
	
}


- (void (^)(void))action {
	void(^action)(void) = objc_getAssociatedObject(self, Key_Action);
	return action;
}


#pragma mark - Public

- (void)runAction {
	 
	void(^action)(void) = objc_getAssociatedObject(self, Key_Action);
	
	if (action) {
		action();
	}
	
}


#pragma mark - Action

- (void)barButtonAction:(UIBarButtonItem *)sender {
	[self runAction];
}

@end
