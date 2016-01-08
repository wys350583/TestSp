//
//  LoanProductDetailTV.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "LoanProductDetailTV.h"
#import "NRDLoadProductRateModel.h"

@interface LoanProductDetailTV()

@property (nonatomic, strong)NSMutableArray *cells;

@end

@implementation LoanProductDetailTV

- (instancetype)initWithFrame:(CGRect)frame model:(id)model
{
    self = [super initWithFrame:frame style:UITableViewStylePlain];
    if (self) {
        self.model = model;
        [self setUI];
    }
    return self;
}

- (void)setUI {
    [super setUI];

}

- (void)setHeaderUI {
    [super setHeaderUI];
    
    NRDHeaderModel *headerModel = [[NRDHeaderModel alloc] initWithHeaderType:NRDHeaderTypeImgV];
    headerModel.imgVImageName = @"smallBanner";
    [self setHeader:headerModel];
}

- (void)setSectionsUI {
    [super setSectionsUI];
    
    NRDSectionModel *sectionModel0 = [[NRDSectionModel alloc] initWithSectionType:NRDSectionTypeHorzLineImgVLab];
    sectionModel0.sectionHeight = 38;
    sectionModel0.labText = @"产品信息";
    sectionModel0.imgVImageName = @"first_productinfo";
    
    NRDSectionModel *sectionModel1 = [[NRDSectionModel alloc] initWithSectionType:NRDSectionTypeHorzLineImgVLab];
    sectionModel1.sectionHeight = 38;
    sectionModel1.labText = @"申请条件";
    sectionModel1.imgVImageName = @"first_applycondition";
    
    NRDSectionModel *sectionModel2 = [[NRDSectionModel alloc] initWithSectionType:NRDSectionTypeHorzLineImgVLab];
    sectionModel2.sectionHeight = 38;
    sectionModel2.labText = @"提供素材";
    sectionModel2.imgVImageName = @"first_providesource";
    
    NRDSectionModel *sectionModel3 = [[NRDSectionModel alloc] initWithSectionType:NRDSectionTypeHorzLineImgVLab];
    sectionModel3.sectionHeight = 38;
    sectionModel3.labText = @"申请与审批";
    sectionModel3.imgVImageName = @"申请与审批";
    
    [self setSections:[@[
                         sectionModel0,
                         sectionModel1,
                         sectionModel2,
                         sectionModel3,
                         ] mutableCopy]];
}

- (void)setCellsUI {
    [super setCellsUI];
    
    NRDLoadProductRateModel *model0 = [[NRDLoadProductRateModel alloc] initWithCellType:NRDCellTypeLoadProductRate];
    model0.loadMoneyMinKey = @"function_min";
    model0.loadMoneyMaxKey = @"function_max";
    model0.monRateKey = @"function_month_rate";
    model0.managerRateKey = @"function_manage_rate";
    model0.monsKey = @"function_time_month";
    model0.cellHeight = 85;
    
    NRDCellModel *model1 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeDisplayMutiRowLab];
    if ([[self.model valueForKey:@"function_type"] integerValue] == 1) {//工薪贷
        model1.cellHeight = 44;
    }
    if ([[self.model valueForKey:@"function_type"] integerValue] == 2) {//助学贷
        model1.cellHeight = 90;
    }
    model1.keyString = @"function_condition";
    
    NRDCellModel *model2 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeDisplayMutiRowLab];
    model2.cellHeight = 90;
    model2.keyString = @"function_file";
    
    NRDCellModel *model3 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeDisplayMutiRowLab];
    model3.cellHeight = 90;
    model3.labText = @"牛人贷根据用户的信用情况，对用户申请金额进行审批调整，提交的材料越多，审批额度、放款速度越快。";
    
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
