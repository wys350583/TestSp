//
//  NRDImageTextFieldArrowRightCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDImageTextFieldArrowRightCell.h"

@implementation NRDImageTextFieldArrowRightCell

- (instancetype)init
{
    self = [super initWithReuseIdentifier:NSStringFromClass([self class])];
    if (self) {
        
    }
    return self;
}

- (void)setUI {
    [super setUI];
    
    self.selectionStyle = UITableViewCellSelectionStyleDefault;
    
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    [self.txf mas_updateConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.bgView);
    }];
    self.txf.enabled = NO;
    
}

@end
