//
//  UICollectionView+Register.m
//  WWCategory
//
//  Created by ww on 2018. 6. 4..
//  Copyright © 2018년 Won Woo Choi. All rights reserved.
//

#import "UICollectionView+Register.h"

@implementation UICollectionView (Register)

- (void)registerNibWithNibName:(NSString *)name forCellWithReuseIdentifier:(NSString *)identifier {
	[self registerNib:[UINib nibWithNibName:name bundle:nil] forCellWithReuseIdentifier:identifier];
}


- (void)registerNibWithNibName:(NSString *)name forSupplementaryViewOfKind:(NSString *)kind withReuseIdentifier:(NSString *)identifier {
	[self registerNib:[UINib nibWithNibName:name bundle:nil] forSupplementaryViewOfKind:kind withReuseIdentifier:identifier];
}


- (void)registerNibforCellWithNibName:(NSString *)name {
	[self registerNib:[UINib nibWithNibName:name bundle:nil] forCellWithReuseIdentifier:name];
}


- (void)registerNibWithNibName:(NSString *)name forSupplementaryViewOfKind:(NSString *)kind {
	[self registerNib:[UINib nibWithNibName:name bundle:nil] forSupplementaryViewOfKind:kind withReuseIdentifier:name];
}


- (void)registerClass:(Class)cellClass {
	[self registerClass:cellClass forCellWithReuseIdentifier:NSStringFromClass(cellClass)];
}


- (void)registerClass:(Class)viewClass forSupplementaryViewOfKind:(NSString *)elementKind {
	[self registerClass:viewClass forSupplementaryViewOfKind:elementKind withReuseIdentifier:NSStringFromClass(viewClass)];
}

@end
