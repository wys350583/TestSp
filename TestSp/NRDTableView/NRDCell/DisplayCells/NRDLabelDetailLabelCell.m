//
//  NRDLabelDetailLabelCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDLabelDetailLabelCell.h"

@implementation NRDLabelDetailLabelCell

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
    
    [self.lab mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(formCellLeftOffset);
        make.centerY.equalTo(self.contentView);
        make.width.equalTo(@cellLabWidth);
    }];
    self.lab.numberOfLines = 2;
    
    self.detailLab = ({
        UILabel *detailLab = [[UILabel alloc] init];
        [self.contentView addSubview:detailLab];
        [detailLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.lab.mas_right).offset(leftSpace);
            make.centerY.equalTo(self.contentView);
            make.right.equalTo(self.contentView).offset(displayCellRightOffset);
        }];
        detailLab.font = [UIFont systemFontOfSize:cellDetailLabFontSize];
        detailLab.textColor = cellDetailLabTextColor;
                
        detailLab;
    });
    
}

- (void)setDisplayData:(NRDCellModel *)model {
    [super setDisplayData:model];
    self.detailLab.text = model.detailLabText ? model.detailLabText : @"";
}


@end
