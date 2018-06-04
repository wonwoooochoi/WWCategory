//
//  UITableView+Register.m
//  WWCategory
//
//  Created by ww on 2018. 6. 4..
//  Copyright © 2018년 Won Woo Choi. All rights reserved.
//

#import "UITableView+Register.h"

@implementation UITableView (Register)

- (void)registerNibWithNibName:(NSString *)name forCellReuseIdentifier:(NSString *)identifier {
	[self registerNib:[UINib nibWithNibName:name bundle:nil] forCellReuseIdentifier:identifier];
}


- (void)registerNibWithNibName:(NSString *)name forHeaderFooterViewReuseIdentifier:(NSString *)identifier {
	[self registerNib:[UINib nibWithNibName:name bundle:nil] forHeaderFooterViewReuseIdentifier:identifier];
}


- (void)registerNibForCellWithNibName:(NSString *)name {
	[self registerNib:[UINib nibWithNibName:name bundle:nil] forCellReuseIdentifier:name];
}


- (void)registerNibForHeaderFooterViewWithNibName:(NSString *)name {
	[self registerNib:[UINib nibWithNibName:name bundle:nil] forHeaderFooterViewReuseIdentifier:name];
}


- (void)registerCellClass:(Class)cellClass {
	[self registerClass:cellClass forCellReuseIdentifier:NSStringFromClass(cellClass)];
}


- (void)registerHeaderFooterViewClass:(Class)aClass {
	[self registerClass:aClass forHeaderFooterViewReuseIdentifier:NSStringFromClass(aClass)];
}

@end
