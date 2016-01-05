//
//  NRDSectionModel.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "NRDSectionModel.h"

@implementation NRDSectionModel

- (instancetype)initWithSectionType:(NRDSectionType)type
{
    self = [super init];
    if (self) {
        self.sectionType = type;
    }
    return self;
}


@end
