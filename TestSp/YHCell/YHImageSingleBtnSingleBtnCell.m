//
//  YHImageSingleBtnSingleBtnCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "YHImageSingleBtnSingleBtnCell.h"

@implementation YHImageSingleBtnSingleBtnCell

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
        [self.contentView addSubview:singleBtn1];
        [singleBtn1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.equalTo(self.contentView);
            make.right.equalTo(self.contentView).offset(cellRightOffset);
            make.width.equalTo(@(cellSingleBtnWidth));
        }];
        singleBtn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        [singleBtn1 setImage:[UIImage imageNamed:cellSingleBtnImageNormal] forState:UIControlStateNormal];
        [singleBtn1 setImage:[UIImage imageNamed:cellSingleBtnImageSelected] forState:UIControlStateSelected];
        singleBtn1.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 8);
        singleBtn1.titleLabel.font = [UIFont systemFontOfSize:cellSingleBtnTitleFontSize];
        [singleBtn1 setTitleColor:cellSingleBtnTitleColorNormal forState:UIControlStateNormal];
        [singleBtn1 setTitleColor:cellSingleBtnTitleColorSelected forState:UIControlStateSelected];
        [singleBtn1 setTitle:@"贷款1" forState:UIControlStateNormal];
        [singleBtn1 addTarget:self action:@selector(singleBtn1Act) forControlEvents:UIControlEventTouchUpInside];
        
        singleBtn1;
    });
    
    self.singleBtn0 = ({
        UIButton *singleBtn0 = [[UIButton alloc] init];
        [self.contentView addSubview:singleBtn0];
        [singleBtn0 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.equalTo(self.contentView);
            make.right.equalTo(self.singleBtn1.mas_left).offset(rightSpace);
            make.width.equalTo(@(cellSingleBtnWidth));
        }];
        singleBtn0.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        [singleBtn0 setImage:[UIImage imageNamed:cellSingleBtnImageNormal] forState:UIControlStateNormal];
        [singleBtn0 setImage:[UIImage imageNamed:cellSingleBtnImageSelected] forState:UIControlStateSelected];
        singleBtn0.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 8);
        singleBtn0.titleLabel.font = [UIFont systemFontOfSize:cellSingleBtnTitleFontSize];
        [singleBtn0 setTitleColor:cellSingleBtnTitleColorNormal forState:UIControlStateNormal];
        [singleBtn0 setTitleColor:cellSingleBtnTitleColorSelected forState:UIControlStateSelected];
        [singleBtn0 setTitle:@"贷款0" forState:UIControlStateNormal];
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


@end
