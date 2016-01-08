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
#import "NSObject+NRDFormat.h"
#import "NSString+NRDFormat.h"

@interface NRDSection : UIView

- (void)setUI;

- (void)setDisplayData:(NRDSectionModel *)model;

- (NRDSectionModel *)displayModel;

- (void)setReqData:(id)reqModel;

- (id)reqModel;

@end
