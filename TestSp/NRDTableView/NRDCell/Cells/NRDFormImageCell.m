//
//  NRDImageCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDFormImageCell.h"

@implementation NRDFormImageCell

- (instancetype)init
{
    self = [super initWithReuseIdentifier:NSStringFromClass([self class])];
    if (self) {
        
    }
    return self;
}

- (void)setUI {
    [super setUI];
    self.imgV = ({
        UIImageView *imgV = [[UIImageView alloc] init];
        [self.bgView addSubview:imgV];
        [imgV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.bgView).offset(formCellLeftOffset);
            make.centerY.equalTo(self.bgView);
            make.width.height.equalTo(@cellImgVSize);
        }];
        imgV;
    });
}

- (void)setDisPlayData:(NRDCellModel *)model {
    [super setDisPlayData:model];
    self.imgV.image = [UIImage imageNamed:model.imgVImageName ? model.imgVImageName : @""];
}

@end
