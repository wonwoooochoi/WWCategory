//
//  UIButton+Align.m
//  WWCategory
//
//  Created by ww on 2018. 6. 4..
//  Copyright © 2018년 Won Woo Choi. All rights reserved.
//

#import "UIButton+Align.h"

@implementation UIButton (Align)

- (void)adjustVerticaAlignmentWithPadding:(CGFloat)padding {
	[self adjustVerticaAlignmentWithPadding:padding imageOnTop:YES];
}


- (void)adjustVerticaAlignmentWithPadding:(CGFloat)padding imageOnTop:(BOOL)imageOnTop {
	
	NSInteger sign = imageOnTop ? 1 : -1;
	
	CGSize imageSize = self.imageView.frame.size;
	self.titleEdgeInsets = UIEdgeInsetsMake((imageSize.height+padding)*sign, -imageSize.width, 0, 0);
	
	CGSize titleSize = self.titleLabel.bounds.size;
	self.imageEdgeInsets = UIEdgeInsetsMake(-(titleSize.height+padding)*sign, 0, 0, -titleSize.width);
	
}

@end
