//
//  NRDImageLabelCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDImageLabelCell.h"

@implementation NRDImageLabelCell

- (instancetype)init
{
    self = [super initWithReuseIdentifier:NSStringFromClass([self class])];
    if (self) {
        
    }
    return self;
}

- (void)setUI {
    [super setUI];
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    self.lab = ({
        UILabel *lab = [[UILabel alloc] init];
        [self.contentView addSubview:lab];
        [lab mas_updateConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.imgV.mas_right).offset(leftSpace);
            make.centerY.equalTo(self.contentView);
            make.right.equalTo(self.contentView).offset(displayCellRightOffset);
        }];
        lab.font = [UIFont systemFontOfSize:cellLabFontSize];
        lab.textColor = cellLabTestColor;
        lab.adjustsFontSizeToFitWidth = YES;
        lab.minimumScaleFactor = 0.7;
        lab;
    });
}

- (void)setDisplayData:(NRDCellModel *)model {
    [super setDisplayData:model];
    self.lab.text = model.labText ? model.labText : @"";
}

@end
