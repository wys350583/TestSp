//
//  YHLabelTextFieldCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "YHLabelTextFieldCell.h"

@interface YHLabelTextFieldCell()

@end

@implementation YHLabelTextFieldCell

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
        make.left.equalTo(self.contentView).offset(cellLeftOffset);
        make.centerY.equalTo(self.contentView);
        make.width.equalTo(@cellLabWidth);
    }];
    self.lab.numberOfLines = 2;
    
    self.txf = ({
        UITextField *txf = [[UITextField alloc] init];
        [self.contentView addSubview:txf];
        [txf mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.lab.mas_right).offset(leftSpace);
            make.centerY.equalTo(self.contentView);
            make.right.equalTo(self.contentView).offset(cellRightOffset);
        }];
        txf.font = [UIFont systemFontOfSize:cellTxfFontSize];
        txf.textColor = cellTxfTextColor;
        txf.textAlignment = NSTextAlignmentRight;
        txf.clearButtonMode = UITextFieldViewModeWhileEditing;
        txf.keyboardType = UIKeyboardTypeDefault;
        txf.placeholder = @"先生，请问您需要贷款吗？";
        txf;
    });
}

@end
