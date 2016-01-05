//
//  NRDHorzLineLabSection.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "NRDHorzLineLabSection.h"

@implementation NRDHorzLineLabSection

- (void)setUI {
    [super setUI];
    
    self.lab = ({
        UILabel *lab = [[UILabel alloc] init];
        [self addSubview:lab];
        [lab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self).offset(sectionLeftOffset);
            make.centerY.equalTo(self);
            make.right.equalTo(self).offset(sectionRightOffset);
        }];
        lab.font = [UIFont systemFontOfSize:sectionLabFontSize];
        lab.textColor = sectionLabTextColor;
        lab.adjustsFontSizeToFitWidth = YES;
        lab.minimumScaleFactor = 0.7;
        lab;
    });
}

- (void)setDisplayData:(NRDSectionModel *)model {
    [super setDisplayData:model];
    self.lab.text = model.labText ? model.labText : @"";
}

@end
