//
//  NRDCell.h
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry.h>
#import "NRDCellDefine.h"
#import "NRDCellModel.h"

@interface NRDCell : UITableViewCell

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier;

- (void)setUI;

- (void)setDisPlayData:(NRDCellModel *)model;

- (NRDCellModel *)disPlayModel;

- (void)setReqData:(id)reqModel;

- (id)reqModel;

@end
