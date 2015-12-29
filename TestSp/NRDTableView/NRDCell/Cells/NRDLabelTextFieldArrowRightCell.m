//
//  NRDLabelTextFieldArrowRightCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDLabelTextFieldArrowRightCell.h"

@implementation NRDLabelTextFieldArrowRightCell

- (instancetype)init
{
    self = [super initWithReuseIdentifier:NSStringFromClass([self class])];
    if (self) {
        
    }
    return self;
}

- (void)setUI {
    [super setUI];
    
    self.selectionStyle = UITableViewCellSelectionStyleDefault;
    
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    [self.txf mas_updateConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.contentView);
    }];
    self.txf.enabled = NO;
    
}

- (void)setTefText:(NSString *)text {
    self.txf.text = text;
    if (text) {
        [self.reqModel setValue:text forKey:self.disPlayModel.keyString];
    }
}

@end
