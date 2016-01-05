//
//  LoanProductDetailTV.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "LoanProductDetailTV.h"

@interface LoanProductDetailTV()

@property (nonatomic, strong)NSMutableArray *cells;

@end

@implementation LoanProductDetailTV

- (void)setUI {
    [super setUI];
    
    NRDSectionModel *sectionModel0 = [[NRDSectionModel alloc] initWithSectionType:NRDSectionTypeHorzLineImgVLab];
    sectionModel0.labText = @"产品信息";
    sectionModel0.imgVImageName = @"产品信息";
    
    NRDSectionModel *sectionModel1 = [[NRDSectionModel alloc] initWithSectionType:NRDSectionTypeHorzLineImgVLab];
    sectionModel1.labText = @"申请条件";
    sectionModel1.imgVImageName = @"产品信息";
    
    NRDSectionModel *sectionModel2 = [[NRDSectionModel alloc] initWithSectionType:NRDSectionTypeHorzLineImgVLab];
    sectionModel2.labText = @"提供素材";
    sectionModel2.imgVImageName = @"产品信息";
    
    NRDSectionModel *sectionModel3 = [[NRDSectionModel alloc] initWithSectionType:NRDSectionTypeHorzLineImgVLab];
    sectionModel3.labText = @"申请与审批";
    sectionModel3.imgVImageName = @"产品信息";
    
    [self setSections:[@[
                         sectionModel0,
                         sectionModel1,
                         sectionModel2,
                         sectionModel3,
                         ] mutableCopy]];
    
    NRDCellModel *model0 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeLab];
    model0.labText = @"贷款贷款贷";
    model0.cellHeight = 85;
    model0.keyString = @"text0";
    
    NRDCellModel *model1 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeLab];
    model1.labText = @"1贷款";
    
    
    NRDCellModel *model2 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeLab];
    model2.labText = @"2贷款";
    model2.txfPlaceHolder = @"2先生，您需要贷款么？";
    model2.keyString = @"text2";
    
    NRDCellModel *model3 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeLab];
    model3.labText = @"3贷款";
    model3.txfPlaceHolder = @"3先生，您需要贷款么？";
    model3.keyString = @"text3";
    
    self.cells = [@[
                    [@[
                       model0,
                       ] mutableCopy],
                    
                    [@[
                       model1,
                       ] mutableCopy],
                    
                    [@[
                       model2,
                       ] mutableCopy],
                    
                    [@[
                       model3,
                       ] mutableCopy],
                    
                    ] mutableCopy];
    [self setCells:self.cells];
}

@end
