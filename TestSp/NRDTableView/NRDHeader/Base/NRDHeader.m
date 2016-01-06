//
//  NRDHeader.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/6.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "NRDHeader.h"

@interface NRDHeader()

@property (nonatomic, strong)NRDHeaderModel *model;

@end

@implementation NRDHeader

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUI];
    }
    return self;
}

- (void)setUI {
    
}

- (void)setDisplayData:(NRDHeaderModel *)model {
    _model = model;
}

- (NRDHeaderModel *)displayModel {
    return _model;
}

@end
