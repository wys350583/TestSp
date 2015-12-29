//
//  UITableViewCell+NRDKit.h
//  TestSp
//
//  Created by 一鸿温 on 15/12/26.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NRDCellModel.h"


@interface UITableViewCell (NRDKit)

- (id)initWithModel:(NRDCellModel *)model;

+ (NSString *)cellString:(NRDCellModel *)model;

- (void)setDisPlayData:(NRDCellModel *)model;

- (void)setReqData:(id)reqModel;

- (void)setTefText:(NSString *)text;

@end
