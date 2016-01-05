//
//  NRDImageTextFieldCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDImageTextFieldCell.h"

@implementation NRDImageTextFieldCell

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
    
    self.txf = ({
        UITextField *txf = [[UITextField alloc] init];
        [self.bgView addSubview:txf];
        [txf mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.equalTo(self.bgView);
            make.left.equalTo(self.imgV.mas_right).offset(leftSpace);
            make.right.equalTo(self.bgView).offset(formCellRightOffset);
        }];
        txf.font = [UIFont systemFontOfSize:cellTxfFontSize];
        txf.textColor = cellTxfTextColor;
        txf.textAlignment = NSTextAlignmentRight;
        txf.clearButtonMode = UITextFieldViewModeWhileEditing;
        txf.keyboardType = UIKeyboardTypeDefault;
        txf;
    });
}

- (void)setDisplayData:(NRDCellModel *)model {
    [super setDisplayData:model];
    self.txf.placeholder = model.txfPlaceHolder ? model.txfPlaceHolder : @"";
}

- (void)setReqData:(id)reqModel {
    [super setReqData:reqModel];
    if (self.displayModel.keyString) {
        self.txf.text = [reqModel valueForKey:self.displayModel.keyString];
    }
}

@end
