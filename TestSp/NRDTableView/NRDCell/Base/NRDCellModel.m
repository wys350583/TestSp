//
//  NRDCellModel.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/28.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDCellModel.h"

@implementation NRDCellModel

- (instancetype)initWithCellType:(NRDCellType)type
{
    self = [super init];
    if (self) {
        self.cellType = type;
    }
    return self;
}

@end
