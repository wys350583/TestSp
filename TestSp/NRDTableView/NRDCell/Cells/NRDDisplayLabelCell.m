//
//  NRDDisplayLabelCell.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "NRDDisplayLabelCell.h"

@implementation NRDDisplayLabelCell

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
        [lab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView).offset(displayCellLeftOffset);
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

- (void)setDisPlayData:(NRDCellModel *)model {
    [super setDisPlayData:model];
    self.lab.text = model.labText ? model.labText : @"";
}

@end
