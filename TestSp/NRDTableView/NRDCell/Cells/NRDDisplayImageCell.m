//
//  NRDDisplayImageCell.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "NRDDisplayImageCell.h"

@implementation NRDDisplayImageCell

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
        [self.contentView addSubview:imgV];
        [imgV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView).offset(displayCellLeftOffset);
            make.centerY.equalTo(self.contentView);
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
