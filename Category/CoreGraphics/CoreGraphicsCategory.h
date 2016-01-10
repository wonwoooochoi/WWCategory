//
//  CoreGraphicsCategory.h
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

// -----------------------------------------------------------------------------
#pragma mark - CGGeometry
// -----------------------------------------------------------------------------

CGPoint CGRectGetCenter(CGRect frame);



// -----------------------------------------------------------------------------
#pragma mark - CGAffineTransform
// -----------------------------------------------------------------------------

CGAffineTransform CGAffineTransformMakeRotationFromDegrees(CGFloat degrees);
