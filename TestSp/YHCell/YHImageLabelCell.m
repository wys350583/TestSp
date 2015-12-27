//
//  YHImageLabelCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "YHImageLabelCell.h"

@implementation YHImageLabelCell

- (instancetype)init
{
    self = [super initWithReuseIdentifier:NSStringFromClass([self class])];
    if (self) {
        
    }
    return self;
}

- (void)setUI {
    [super setUI];
    
    self.lab = ({
        UILabel *lab = [[UILabel alloc] init];
        [self.contentView addSubview:lab];
        [lab mas_updateConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.imgV.mas_right).offset(leftSpace);
            make.centerY.equalTo(self.contentView);
            make.right.equalTo(self.contentView).offset(cellRightOffset);
        }];
        lab.font = [UIFont systemFontOfSize:cellLabFontSize];
        lab.textColor = cellLabTestColor;
        lab.adjustsFontSizeToFitWidth = YES;
        lab.minimumScaleFactor = 0.7;
        lab.text = @"贷款贷款贷款贷款";
        lab;
    });
}

@end
