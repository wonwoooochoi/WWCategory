//
//  CoreGraphicsCategory.m
//  WWCategory
//
//  Created by ww on 2016. 1. 10..
//  Copyright © 2016년 Won Woo Choi. All rights reserved.
//

#import "CoreGraphicsCategory.h"

// -----------------------------------------------------------------------------
#pragma mark - CGGeometry
// -----------------------------------------------------------------------------

CGPoint CGRectGetCenter(CGRect frame) {
	
	return CGPointMake(CGRectGetMidX(frame), CGRectGetMidY(frame));
	
}



// -----------------------------------------------------------------------------
#pragma mark - CGAffineTransform
// -----------------------------------------------------------------------------

CGAffineTransform CGAffineTransformMakeRotationFromDegrees(CGFloat degrees) {
	
	return CGAffineTransformMakeRotation((M_PI * degrees / 180.0));
	
}
