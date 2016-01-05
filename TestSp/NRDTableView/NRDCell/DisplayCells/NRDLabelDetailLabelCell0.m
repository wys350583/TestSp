//
//  NRDLabelDetailLabelCell0.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/29.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDLabelDetailLabelCell0.h"

@implementation NRDLabelDetailLabelCell0

- (instancetype)init
{
    self = [super initWithReuseIdentifier:NSStringFromClass([self class])];
    if (self) {
        
    }
    return self;
}

- (void)setUI {
    [super setUI];
    
    self.detailLab.textColor = cellDetailLab0TextColor;
    self.detailLab.font = [UIFont systemFontOfSize:cellDetailLab0FontSize];
    
}

@end
