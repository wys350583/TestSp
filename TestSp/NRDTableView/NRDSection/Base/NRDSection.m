//
//  NRDSection.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "NRDSection.h"

@interface NRDSection()

@property (nonatomic, strong)NRDSectionModel *model;

@end

@implementation NRDSection

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setUI];
    }
    return self;
}

- (void)setUI {
    
}

- (void)setDisPlayData:(NRDSectionModel *)model {
    _model = model;
}

- (NRDSectionModel *)disPlayModel {
    return _model;
}

@end
