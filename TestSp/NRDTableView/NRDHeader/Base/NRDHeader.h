//
//  NRDHeader.h
//  TestSp
//
//  Created by 一鸿温 on 16/1/6.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry.h>
#import "NRDHeaderModel.h"
#import "NRDHeaderDefine.h"
#import "NSObject+NRDFormat.h"
#import "NSString+NRDFormat.h"

@interface NRDHeader : UIView

- (void)setUI;

- (void)setDisplayData:(NRDHeaderModel *)model;

- (NRDHeaderModel *)displayModel;

@end
