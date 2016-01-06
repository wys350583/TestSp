//
//  NRDImgVHeader.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/6.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "NRDImgVHeader.h"

@implementation NRDImgVHeader

- (instancetype)init
{
    self = [super initWithFrame:CGRectMake(0, 0, headerWidth, 108)];
    if (self) {
        
    }
    return self;
}

- (void)setUI {
    [super setUI];
    
    self.imgV = ({
        UIImageView *imgV = [[UIImageView alloc] init];
        [self addSubview:imgV];
        [imgV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.right.equalTo(self);
            make.height.equalTo(@98);
        }];
        imgV;
    });
    
}

- (void)setDisplayData:(NRDHeaderModel *)model {
    [super setDisplayData:model];
    self.imgV.image = [UIImage imageNamed:model.imgVImageName ? model.imgVImageName : @""];
}

@end
