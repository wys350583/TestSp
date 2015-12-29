//
//  NRDLabelDetailLabelArrowRightCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDLabelDetailLabelArrowRightCell.h"

@implementation NRDLabelDetailLabelArrowRightCell

- (instancetype)init
{
    self = [super initWithReuseIdentifier:NSStringFromClass([self class])];
    if (self) {
        
    }
    return self;
}

- (void)setUI {
    [super setUI];
    
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    [self.detailLab mas_updateConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.contentView);
    }];
    
}

@end
