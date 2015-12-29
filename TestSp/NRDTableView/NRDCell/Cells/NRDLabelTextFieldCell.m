//
//  NRDLabelTextFieldCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDLabelTextFieldCell.h"

@interface NRDLabelTextFieldCell()<UITextFieldDelegate>

@end

@implementation NRDLabelTextFieldCell

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
        make.top.bottom.equalTo(self.contentView);
        make.left.equalTo(self.contentView).offset(cellLeftOffset);
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
        txf.delegate = self;
        txf;
    });
}

- (void)setDisPlayData:(NRDCellModel *)model {
    [super setDisPlayData:model];
    self.txf.placeholder = model.txfPlaceHolder ? model.txfPlaceHolder : @"";
}

- (void)setReqData:(id)reqModel {
    [super setReqData:reqModel];
    if (self.disPlayModel.keyString) {
        self.txf.text = [reqModel valueForKey:self.disPlayModel.keyString];
    }
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    [self.reqModel setValue:textField.text forKey:self.disPlayModel.keyString];
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    [self.reqModel setValue:textField.text forKey:self.disPlayModel.keyString];
    return YES;
}

@end
