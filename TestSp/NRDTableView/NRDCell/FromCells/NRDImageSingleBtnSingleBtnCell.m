//
//  NRDImageSingleBtnSingleBtnCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDImageSingleBtnSingleBtnCell.h"

@implementation NRDImageSingleBtnSingleBtnCell

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
    
    self.singleBtn1 = ({
        UIButton *singleBtn1 = [[UIButton alloc] init];
        [self.bgView addSubview:singleBtn1];
        [singleBtn1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.equalTo(self.bgView);
            make.right.equalTo(self.bgView).offset(formCellRightOffset);
            make.width.equalTo(@(cellSingleBtnWidth));
        }];
        singleBtn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        [singleBtn1 setImage:[UIImage imageNamed:self.displayModel.singleBtnImageNameNormal ? self.displayModel.singleBtnImageNameNormal : cellSingleBtnImageNormal] forState:UIControlStateNormal];
        [singleBtn1 setImage:[UIImage imageNamed:self.displayModel.singleBtnImageNameSelected ? self.displayModel.singleBtnImageNameSelected : cellSingleBtnImageSelected] forState:UIControlStateSelected];
        singleBtn1.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 8);
        singleBtn1.titleLabel.font = [UIFont systemFontOfSize:cellSingleBtnTitleFontSize];
        [singleBtn1 setTitleColor:cellSingleBtnTitleColorNormal forState:UIControlStateNormal];
        [singleBtn1 setTitleColor:cellSingleBtnTitleColorSelected forState:UIControlStateSelected];
        [singleBtn1 addTarget:self action:@selector(singleBtn1Act) forControlEvents:UIControlEventTouchUpInside];
        
        singleBtn1;
    });
    
    self.singleBtn0 = ({
        UIButton *singleBtn0 = [[UIButton alloc] init];
        [self.bgView addSubview:singleBtn0];
        [singleBtn0 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.equalTo(self.bgView);
            make.right.equalTo(self.singleBtn1.mas_left).offset(rightSpace);
            make.width.equalTo(@(cellSingleBtnWidth));
        }];
        singleBtn0.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        [singleBtn0 setImage:[UIImage imageNamed:self.displayModel.singleBtnImageNameNormal ? self.displayModel.singleBtnImageNameNormal : cellSingleBtnImageNormal] forState:UIControlStateNormal];
        [singleBtn0 setImage:[UIImage imageNamed:self.displayModel.singleBtnImageNameSelected ? self.displayModel.singleBtnImageNameSelected : cellSingleBtnImageSelected] forState:UIControlStateSelected];
        singleBtn0.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 8);
        singleBtn0.titleLabel.font = [UIFont systemFontOfSize:cellSingleBtnTitleFontSize];
        [singleBtn0 setTitleColor:cellSingleBtnTitleColorNormal forState:UIControlStateNormal];
        [singleBtn0 setTitleColor:cellSingleBtnTitleColorSelected forState:UIControlStateSelected];
        [singleBtn0 addTarget:self action:@selector(singleBtn0Act) forControlEvents:UIControlEventTouchUpInside];
        
        singleBtn0;
    });
    
}

- (void)singleBtn0Act {
    if (!self.singleBtn0.selected) {
        self.singleBtn0.selected = YES;
        self.singleBtn1.selected = NO;
    }
}

- (void)singleBtn1Act {
    if (!self.singleBtn1.selected) {
        self.singleBtn1.selected = YES;
        self.singleBtn0.selected = NO;
    }
}

- (void)setDisplayData:(NRDCellModel *)model {
    [super setDisplayData:model];
    [self.singleBtn0 setTitle:model.singleBtn0Title ? model.singleBtn0Title : @"" forState:UIControlStateNormal];
    [self.singleBtn1 setTitle:model.singleBtn1Title ? model.singleBtn1Title : @"" forState:UIControlStateNormal];
}

@end
