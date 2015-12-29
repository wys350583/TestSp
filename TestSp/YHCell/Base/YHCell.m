//
//  YHCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "YHCell.h"

@interface YHCell()

@property (nonatomic, strong)YHCellModel *model;

@property (nonatomic, strong)id reqModel;

@end

@implementation YHCell

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setUI];
    }
    return self;
}

- (void)setUI {
        
    self.accessoryType = UITableViewCellAccessoryNone;

}

- (void)setDisPlayData:(YHCellModel *)model {
    _model = model;
}

- (YHCellModel *)disPlayModel {
    return _model;
}

- (void)setReqData:(id)reqModel {
    _reqModel = reqModel;
}

- (id)reqModel {
    return _reqModel;
}

@end