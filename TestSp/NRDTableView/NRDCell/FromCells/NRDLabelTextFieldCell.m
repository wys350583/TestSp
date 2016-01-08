//
//  NRDLabelTextFieldCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDLabelTextFieldCell.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface NRDLabelTextFieldCell()

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
        make.top.bottom.equalTo(self.bgView);
        make.left.equalTo(self.bgView).offset(formCellLeftOffset);
        make.right.equalTo(self.vertLine).offset(cellLabRightOffset);
    }];
    self.lab.numberOfLines = 2;
    
    self.txf = ({
        UITextField *txf = [[UITextField alloc] init];
        [self.bgView addSubview:txf];
        [txf mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.vertLine.mas_right).offset(leftSpace);
            make.centerY.equalTo(self.bgView);
            make.right.equalTo(self.bgView).offset(formCellRightOffset);
        }];
        txf.font = [UIFont systemFontOfSize:cellTxfFontSize];
        txf.textColor = cellTxfTextColor;
        txf.clearButtonMode = UITextFieldViewModeWhileEditing;
        txf.keyboardType = UIKeyboardTypeDefault;
        txf;
    });
    @weakify(self);
    [self.txf.rac_textSignal subscribeNext:^(id x) {
        @strongify(self);
        [self.reqModel setValue:x forKey:self.displayModel.keyString];
    }];
}

- (void)setDisplayData:(NRDCellModel *)model {
    [super setDisplayData:model];
    self.txf.placeholder = model.txfPlaceHolder ? model.txfPlaceHolder : @"";
}

- (void)setReqData:(id)reqModel {
    [super setReqData:reqModel];
    if (reqModel && self.displayModel.keyString) {
        self.txf.text = [reqModel valueForKey:self.displayModel.keyString];
    }
}

@end
