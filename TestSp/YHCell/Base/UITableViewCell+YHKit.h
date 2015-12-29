//
//  UITableViewCell+YHKit.h
//  TestSp
//
//  Created by 一鸿温 on 15/12/26.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YHCellModel.h"


@interface UITableViewCell (YHKit)

- (id)initWithModel:(YHCellModel *)model;

+ (NSString *)cellString:(YHCellModel *)model;

- (void)setDisPlayData:(YHCellModel *)model;

- (void)setReqData:(id)reqModel;

- (void)setTefText:(NSString *)text;

@end
