//
//  NRDLabelSingleBtnSingleBtnCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDLabelSingleBtnSingleBtnCell.h"

@implementation NRDLabelSingleBtnSingleBtnCell

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
        make.left.equalTo(self.bgView).offset(formCellLeftOffset);
        make.centerY.equalTo(self.bgView);
        make.right.equalTo(self.vertLine).offset(cellLabRightOffset);
    }];
    self.lab.numberOfLines = 2;
    
    self.singleBtn0 = ({
        UIButton *singleBtn0 = [[UIButton alloc] init];
        [self.bgView addSubview:singleBtn0];
        [singleBtn0 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.equalTo(self.bgView);
            make.left.equalTo(self.vertLine.mas_right).offset(leftSpace);
            make.width.equalTo(@(cellSingleBtnWidth));
        }];
        singleBtn0.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [singleBtn0 setImage:[UIImage imageNamed:self.displayModel.singleBtnImageNameNormal ? self.displayModel.singleBtnImageNameNormal : cellSingleBtnImageNormal] forState:UIControlStateNormal];
        [singleBtn0 setImage:[UIImage imageNamed:self.displayModel.singleBtnImageNameSelected ? self.displayModel.singleBtnImageNameSelected : cellSingleBtnImageSelected] forState:UIControlStateSelected];
        singleBtn0.titleEdgeInsets = UIEdgeInsetsMake(0, 8, 0, 0);
        singleBtn0.titleLabel.font = [UIFont systemFontOfSize:cellSingleBtnTitleFontSize];
        [singleBtn0 setTitleColor:cellSingleBtnTitleColorNormal forState:UIControlStateNormal];
        [singleBtn0 setTitleColor:cellSingleBtnTitleColorSelected forState:UIControlStateSelected];
        [singleBtn0 addTarget:self action:@selector(singleBtn0Act) forControlEvents:UIControlEventTouchUpInside];
        singleBtn0;
    });

    
    self.singleBtn1 = ({
        UIButton *singleBtn1 = [[UIButton alloc] init];
        [self.bgView addSubview:singleBtn1];
        [singleBtn1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.equalTo(self.bgView);
            make.left.equalTo(self.singleBtn0.mas_right).offset(leftSpace);
            make.width.equalTo(@(cellSingleBtnWidth));
        }];
        singleBtn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [singleBtn1 setImage:[UIImage imageNamed:self.displayModel.singleBtnImageNameNormal ? self.displayModel.singleBtnImageNameNormal : cellSingleBtnImageNormal] forState:UIControlStateNormal];
        [singleBtn1 setImage:[UIImage imageNamed:self.displayModel.singleBtnImageNameSelected ? self.displayModel.singleBtnImageNameSelected : cellSingleBtnImageSelected] forState:UIControlStateSelected];
        singleBtn1.titleEdgeInsets = UIEdgeInsetsMake(0, 8, 0, 0);
        singleBtn1.titleLabel.font = [UIFont systemFontOfSize:cellSingleBtnTitleFontSize];
        [singleBtn1 setTitleColor:cellSingleBtnTitleColorNormal forState:UIControlStateNormal];
        [singleBtn1 setTitleColor:cellSingleBtnTitleColorSelected forState:UIControlStateSelected];
        [singleBtn1 addTarget:self action:@selector(singleBtn1Act) forControlEvents:UIControlEventTouchUpInside];
        singleBtn1;
    });
    
    
}

- (void)setDisplayData:(NRDCellModel *)model {
    [super setDisplayData:model];
    [self.singleBtn0 setTitle:model.singleBtn0Title ? model.singleBtn0Title : @"" forState:UIControlStateNormal];
    [self.singleBtn1 setTitle:model.singleBtn1Title ? model.singleBtn1Title : @"" forState:UIControlStateNormal];
}

- (void)setReqData:(id)reqModel {
    [super setReqData:reqModel];
    if (reqModel && self.displayModel.keyString) {
        if (self.displayModel.singleBtn0SelectedKey != 0 && self.displayModel.singleBtn1SelectedKey != 1) {
            if ([[self.reqModel valueForKey:self.displayModel.keyString] integerValue] == self.displayModel.singleBtn0SelectedKey) {
                self.singleBtn0.selected = YES;
            }
            if ([[self.reqModel valueForKey:self.displayModel.keyString] integerValue] == self.displayModel.singleBtn1SelectedKey) {
                self.singleBtn1.selected = YES;
            }
        }
        else {
            if ([[self.reqModel valueForKey:self.displayModel.keyString] integerValue] == 0) {
                self.singleBtn0.selected = YES;
            }
            else {
                self.singleBtn1.selected = YES;
            }
        }
    }
}

- (void)singleBtn0Act {
    if (!self.singleBtn0.selected) {
        self.singleBtn0.selected = YES;
        self.singleBtn1.selected = NO;
        if (self.displayModel.singleBtn0SelectedKey != 0 && self.displayModel.singleBtn1SelectedKey != 1) {
            [self.reqModel setValue:@(self.displayModel.singleBtn0SelectedKey) forKey:self.displayModel.keyString];
        }
        else {
            [self.reqModel setValue:@(0) forKey:self.displayModel.keyString];
        }
    }
}

- (void)singleBtn1Act {
    if (!self.singleBtn1.selected) {
        self.singleBtn1.selected = YES;
        self.singleBtn0.selected = NO;
        if (self.displayModel.singleBtn0SelectedKey != 0 && self.displayModel.singleBtn1SelectedKey != 1) {
            [self.reqModel setValue:@(self.displayModel.singleBtn1SelectedKey) forKey:self.displayModel.keyString];
        }
        else {
            [self.reqModel setValue:@(1) forKey:self.displayModel.keyString];
        }
    }
}


@end
