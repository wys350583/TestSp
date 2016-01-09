//
//  PersonalInfoVerifyTV.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "PersonalInfoVerifyTV.h"
#import "NRDNormalTwoProgressModel.h"

@interface PersonalInfoVerifyTV()

@property (nonatomic, strong)NSMutableArray *cells;

@end

@implementation PersonalInfoVerifyTV

- (void)setUI {
    [super setUI];
}

- (void)setHeaderUI {
    [super setHeaderUI];
}

- (void)setSectionsUI {
    [super setSectionsUI];
    NRDNormalTwoProgressModel *sectionModel = [[NRDNormalTwoProgressModel alloc] initWithSectionType:NRDSectionTypeNormalTwoProgress];
    sectionModel.progressType = NRDNormalTwoProgressTypeFirst;
    sectionModel.labelTexts = @[@"身份信息", @"银行卡信息", @"申请",];
    sectionModel.sectionHeight = 44;
    sectionModel.observerPropertys = @[@"real_name", @"id_cardnum"];
    [self setSections:[@[
                         sectionModel,
                         
                         ] mutableCopy]];

}

- (void)setCellsUI {
    [super setCellsUI];
    
    NRDCellModel *model0 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeLabTxfDef];
    model0.labText = @"姓名";
    model0.txfPlaceHolder = @"请输入姓名";
    model0.keyString = @"real_name";
    
    NRDCellModel *model1 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeLabTxfNum];
    model1.labText = @"身份认证";
    model1.txfPlaceHolder = @"请输入身份证";
    model1.keyString = @"id_cardnum";
    
    self.cells = @[
                    @[
                       model0,
                       model1,
                       ].mutableCopy,
                    
                    ].mutableCopy;
    [self setCells:self.cells];
}


@end
