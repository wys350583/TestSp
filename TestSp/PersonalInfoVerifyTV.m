//
//  PersonalInfoVerifyTV.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "PersonalInfoVerifyTV.h"

@interface PersonalInfoVerifyTV()<UITableViewDelegate>

@property (nonatomic, strong)NSMutableArray *cells;

@end

@implementation PersonalInfoVerifyTV

- (void)setUI {
    [super setUI];
    self.delegate = self;
    
    NRDSectionModel *sectionModel0 = [[NRDSectionModel alloc] initWithSectionType:NRDSectionTypeHorzLineLab];
    [self setSections:[@[sectionModel0] mutableCopy]];
    
    NRDCellModel *model0 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeLabTxfDef];
    model0.labText = @"贷款贷款贷";
    model0.txfPlaceHolder = @"0先生，您需要贷款么？";
    model0.keyString = @"text0";
    
    NRDCellModel *model1 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeLabTxfNum];
    model1.labText = @"1贷款";
    model1.txfPlaceHolder = @"1先生，您需要贷款么？";
    model1.keyString = @"text1";
    
    NRDCellModel *model2 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeLabTxfIdcard];
    model2.labText = @"2贷款";
    model2.txfPlaceHolder = @"2先生，您需要贷款么？";
    model2.keyString = @"text2";
    
    NRDCellModel *model3 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeLabTxfPsw];
    model3.labText = @"3贷款";
    model3.txfPlaceHolder = @"3先生，您需要贷款么？";
    model3.keyString = @"text3";
    
    NRDCellModel *model4 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeLabTxfArrowR];
    model4.labText = @"4贷款";
    model4.txfPlaceHolder = @"4先生，您需要贷款么？";
    model4.keyString = @"text4";
    
    NRDCellModel *model5 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeLabSingleBtnSingleBtn];
    model5.labText = @"5贷款";
    model5.singleBtn0Title = @"50贷款";
    model5.singleBtn1Title = @"51贷款";
    model5.keyString = @"selectIndex";
    model5.singleBtn0SelectedKey = 1;
    model5.singleBtn1SelectedKey = 0;
    
//    NRDCellModel *model6 = [[NRDCellModel alloc] initWithCellType:NRDCellTypeLabDetailLab0];
//    model6.labText = @"6贷款";
//    model6.detailLabText = @"6贷款贷款";
    
    self.cells = [@[
                    [@[
                       model0,
                       model1,
                       model2,
                       model3,
                       model4,
                       ] mutableCopy],
                    
//                    [@[
//                       model5,
////                       model6,
//                       ] mutableCopy],
                    
                    ] mutableCopy];
    [self setCells:self.cells];
}

//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
//    return 100;
//}
//
//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
//    UIView *view = [[UIView alloc] init];
//    view.backgroundColor = [UIColor orangeColor];
//    return view;
//}


@end
