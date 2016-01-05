//
//  NRDSection.h
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NRDSectionDefine.h"
#import <Masonry.h>
#import "NRDSectionModel.h"

@interface NRDSection : UIView

- (void)setUI;

- (void)setDisPlayData:(NRDSectionModel *)model;

- (NRDSectionModel *)disPlayModel;

@end
