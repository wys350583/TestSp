//
//  NRDCell.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "NRDCell.h"

@interface NRDCell()

@property (nonatomic, strong)NRDCellModel *model;

@property (nonatomic, strong)id reqModel;

@end

@implementation NRDCell

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setUI];
    }
    return self;
}

- (void)setUI {

    self.contentView.frame = CGRectMake(0, 0, cellWidth, 999);
    
    self.accessoryType = UITableViewCellAccessoryNone;

}

- (void)setDisPlayData:(NRDCellModel *)model {
    _model = model;
}

- (NRDCellModel *)disPlayModel {
    return _model;
}

- (void)setReqData:(id)reqModel {
    _reqModel = reqModel;
}

- (id)reqModel {
    return _reqModel;
}

@end
