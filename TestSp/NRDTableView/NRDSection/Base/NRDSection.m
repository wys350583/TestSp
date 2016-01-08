//
//  NRDSection.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "NRDSection.h"

@interface NRDSection()

@property (nonatomic, strong)NRDSectionModel *model;

@property (nonatomic, strong)id reqModel;

@end

@implementation NRDSection

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setUI];
    }
    return self;
}

- (void)setUI {
    
}

- (void)setDisplayData:(NRDSectionModel *)model {
    _model = model;
}

- (NRDSectionModel *)displayModel {
    return _model;
}

- (void)setReqData:(id)reqModel {
    _reqModel = reqModel;
}

- (id)reqModel {
    return _reqModel;
}

@end
