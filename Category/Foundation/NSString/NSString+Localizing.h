//
//  NSString+Localizing.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Localizing)

/**
 @brief 지역화된 문자열 반환.
 @return 문자열 객체.
 */
@property (nonatomic, readonly) NSString *localizedString;

@end
