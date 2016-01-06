//
//  UIView+NRDHeader.h
//  TestSp
//
//  Created by 一鸿温 on 16/1/6.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NRDHeaderModel.h"


@interface UIView (NRDHeader)

- (id)initWithHeaderModel:(NRDHeaderModel *)model;

- (void)setDisplayData:(NRDHeaderModel *)model;


@end
