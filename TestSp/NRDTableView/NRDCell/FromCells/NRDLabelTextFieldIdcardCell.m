//
//  NRDLabelTextFieldIdcardCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDLabelTextFieldIdcardCell.h"

@implementation NRDLabelTextFieldIdcardCell

- (instancetype)init
{
    self = [super initWithReuseIdentifier:NSStringFromClass([self class])];
    if (self) {
        
    }
    return self;
}

- (void)setUI {
    [super setUI];
    
    self.txf.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    
}

@end
