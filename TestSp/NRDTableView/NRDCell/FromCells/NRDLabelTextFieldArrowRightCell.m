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
    
    [self hasArrowRight];
    
    [self.txf mas_updateConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.bgView).offset(-22);
    }];
    self.txf.enabled = NO;
    
}

- (void)setTefText:(NSDictionary *)textDict {
    if (textDict) {
        self.txf.text = [NSString stringWithFormat:@"%@", textDict.allValues[0] ? textDict.allValues[0] : @""];
        [self.reqModel setValue:[NSString stringWithFormat:@"%@", textDict.allKeys[0] ? textDict.allKeys[0] : @""] forKey:self.displayModel.keyString];
    }
}

@end
