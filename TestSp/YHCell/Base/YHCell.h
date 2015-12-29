//
//  YHCell.h
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry.h>
#import "YHCellDefine.h"
#import "YHCellModel.h"

@interface YHCell : UITableViewCell

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier;

- (void)setUI;

- (void)setDisPlayData:(YHCellModel *)model;

- (YHCellModel *)disPlayModel;

- (void)setReqData:(id)reqModel;

- (id)reqModel;

@end
