//
//  NRDLabelCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDFormLabelCell.h"

@interface NRDFormLabelCell()


@end

@implementation NRDFormLabelCell

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
        [self.bgView addSubview:lab];
        [lab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.bgView).offset(formCellLeftOffset);
            make.centerY.equalTo(self.bgView);
            make.right.equalTo(self.bgView).offset(formCellRightOffset);
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
