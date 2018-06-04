//
//  UITableView+Register.h
//  WWCategory
//
//  Created by ww on 2018. 6. 4..
//  Copyright © 2018년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Register)

/**
 xib 파일명으로 셀 등록.
 @param name xib 파일명.
 @param identifier 셀 식별자.
 */
- (void)registerNibWithNibName:(NSString *)name forCellReuseIdentifier:(NSString *)identifier;

/**
 xib 파일명으로 헤더, 푸터 뷰 등록.
 @param name xib 파일명.
 @param identifier 셀 식별자.
 */
- (void)registerNibWithNibName:(NSString *)name forHeaderFooterViewReuseIdentifier:(NSString *)identifier;


/**
 xib 파일명으로 셀 등록. 파일명을 식별자로 사용.
 @param name xib 파일명.
 */
- (void)registerNibForCellWithNibName:(NSString *)name;

/**
 xib 파일명으로 헤더, 푸터 뷰 등록. 파일명을 식별자로 사용.
 @param name xib 파일명.
 */
- (void)registerNibForHeaderFooterViewWithNibName:(NSString *)name;


/**
 클래스로 셀 등록. 클래스명을 식별자로 사용.
 @param cellClass 셀 클래스명.
 */
- (void)registerCellClass:(Class)cellClass;

/**
 클래스로 헤더, 푸터 뷰 등록. 클래스명을 식별자로 사용.
 @param aClass 뷰 클래스명.
 */
- (void)registerHeaderFooterViewClass:(Class)aClass;

@end
