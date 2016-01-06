//
//  UITableViewCell+NRDCell.h
//  TestSp
//
//  Created by 一鸿温 on 15/12/26.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NRDCellModel.h"


@interface UITableViewCell (NRDCell)

- (id)initWithModel:(NRDCellModel *)model;

+ (NSString *)cellString:(NRDCellModel *)model;

- (void)setDisplayData:(NRDCellModel *)model;

- (void)setReqData:(id)reqModel;

/**
 *  弹出pickView或者新页面选择时用
 *
 */
- (void)setTefText:(NSDictionary *)textDict;

@end
