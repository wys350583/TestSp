//
//  NRDHeaderModel.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/6.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "NRDHeaderModel.h"

@implementation NRDHeaderModel

- (instancetype)initWithHeaderType:(NRDHeaderType)type
{
    self = [super init];
    if (self) {
        self.headerType = type;
    }
    return self;
}


@end
