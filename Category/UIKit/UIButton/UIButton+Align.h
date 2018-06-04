//
//  UIButton+Align.h
//  WWCategory
//
//  Created by ww on 2018. 6. 4..
//  Copyright © 2018년 Won Woo Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Align)

/**
 버튼의 이미지, 타이틀을 세로로 정렬.
 @param padding 버튼과 타이틀의 간격.
 */
- (void)adjustVerticaAlignmentWithPadding:(CGFloat)padding;

/**
 버튼의 이미지, 타이틀을 세로로 정렬.
 @param padding 버튼과 타이틀의 간격.
 @param imageOnTop 이미지를 최상단에 붙일지 여부.
 */
- (void)adjustVerticaAlignmentWithPadding:(CGFloat)padding imageOnTop:(BOOL)imageOnTop;

@end
