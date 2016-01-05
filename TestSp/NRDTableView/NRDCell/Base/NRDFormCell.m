//
//  NRDCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDFormCell.h"

@interface NRDFormCell()

@end

@implementation NRDFormCell

- (instancetype)init
{
    self = [super initWithReuseIdentifier:NSStringFromClass([self class])];
    if (self) {
        
    }
    return self;
}

- (void)setUI {
    [super setUI];
    
    self.backgroundColor = formCellBackgroundColor;
    
    self.bgView = ({
        UIView *bgView = [[UIView alloc] init];
        [self addSubview:bgView];
        [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.equalTo(self).offset(10);
            make.bottom.equalTo(self);
            make.right.equalTo(self).offset(-10);
        }];
        bgView.backgroundColor = [UIColor whiteColor];
        bgView.layer.cornerRadius = 5;
        bgView;
    });
    
    self.vertLine = ({
        UIView *vertLine = [[UIView alloc] init];
        [self.bgView addSubview:vertLine];
        [vertLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.bgView).offset(90);
            make.top.equalTo(self.bgView).offset(8);
            make.bottom.equalTo(self.bgView).offset(-8);
            make.width.equalTo(@1);
        }];
        vertLine.backgroundColor = vertLineColor;
        vertLine;
    });
}

- (void)hasArrowRight {
    self.arrowRight = ({
        UIImageView *arrowRight = [[UIImageView alloc] init];
        [self.bgView addSubview:arrowRight];
        [arrowRight mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.bgView);
            make.right.equalTo(self.bgView).offset(formCellRightOffset);
            make.width.equalTo(@10);
            make.height.equalTo(@16);
        }];
        arrowRight.image = [UIImage imageNamed:@"cellArrowRight"];
        arrowRight;
    });
}

@end
