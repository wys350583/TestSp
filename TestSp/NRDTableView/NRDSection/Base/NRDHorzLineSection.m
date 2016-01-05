//
//  NRDHorzLineSection.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "NRDHorzLineSection.h"

@implementation NRDHorzLineSection

- (void)setUI {
    [super setUI];
    
    self.backgroundColor = sectionBackgroundColor;
    
    UIView *horzLine = [[UIView alloc] init];
    [self addSubview:horzLine];
    [horzLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.right.equalTo(self);
        make.height.equalTo(@1);
    }];
    horzLine.backgroundColor = sectionHorzLineBackgroundColor;
}

@end
