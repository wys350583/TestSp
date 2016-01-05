//
//  UIView+NRDKit.h
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NRDSectionModel.h"


@interface UIView (NRDKit)

- (id)initWithModel:(NRDSectionModel *)model;

- (void)setDisplayData:(NRDSectionModel *)model;

@end
