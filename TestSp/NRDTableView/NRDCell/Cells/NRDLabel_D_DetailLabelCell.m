//
//  NRDLabel_D_DetailLabelCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDLabel_D_DetailLabelCell.h"

@implementation NRDLabel_D_DetailLabelCell

- (instancetype)init
{
    self = [super initWithReuseIdentifier:NSStringFromClass([self class])];
    if (self) {
        
    }
    return self;
}

- (void)setUI {
    [super setUI];
    
    [self.lab removeFromSuperview];
    [self.contentView addSubview:self.lab];
    
    [self.lab mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(cellLeftOffset);
        make.centerY.equalTo(self.contentView).offset(-7);
        make.right.equalTo(self.contentView).offset(cellRightOffset);
    }];
    self.lab.numberOfLines = 1;
    
    [self.detailLab mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.lab);
        make.top.equalTo(self.lab.mas_bottom).offset(topSpace);
        make.right.equalTo(self.lab);
    }];
    self.detailLab.textAlignment = NSTextAlignmentLeft;
}

@end
