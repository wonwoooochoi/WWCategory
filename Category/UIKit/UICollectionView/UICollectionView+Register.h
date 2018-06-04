//
//  UICollectionView+Register.h
//  WWCategory
//
//  Created by ww on 2018. 6. 4..
//  Copyright © 2018년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (Register)

/**
 xib 파일명으로 셀 등록.
 @param name xib 파일명.
 @param identifier 셀 식별자.
 */
- (void)registerNibWithNibName:(NSString *)name forCellWithReuseIdentifier:(NSString *)identifier;

/**
 xib 파일명으로 보조 뷰 등록.
 @param name xib 파일명.
 @param kind 종류.
 @param identifier 셀 식별자.
 */
- (void)registerNibWithNibName:(NSString *)name forSupplementaryViewOfKind:(NSString *)kind withReuseIdentifier:(NSString *)identifier;


/**
 xib 파일명으로 셀 등록. 파일명을 식별자로 사용.
 @param name xib 파일명.
 */
- (void)registerNibforCellWithNibName:(NSString *)name;

/**
 xib 파일명으로 보조 뷰 등록. 파일명을 식별자로 사용.
 @param name xib 파일명.
 @param kind 종류.
 */
- (void)registerNibWithNibName:(NSString *)name forSupplementaryViewOfKind:(NSString *)kind;


/**
 클래스로 셀 등록. 클래스명을 식별자로 사용.
 @param cellClass 셀 클래스명.
 */
- (void)registerClass:(Class)cellClass;

/**
 클래스로 보조 뷰 등록. 클래스명을 식별자로 사용.
 @param viewClass 뷰 클래스명.
 @param elementKind 종류.
 */
- (void)registerClass:(Class)viewClass forSupplementaryViewOfKind:(NSString *)elementKind;

@end
