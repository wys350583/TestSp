//
//  ViewController.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/23.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "ViewController.h"
#import "NRDTableView.h"
#import "TestModel.h"

@interface ViewController ()<NRDTableViewDelegate>

@property (nonatomic, strong)NSMutableArray *cells;

@property (nonatomic, strong)TestModel *model;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[TestModel alloc] init];
    self.model.text0 = @"text0";
    self.model.text1 = @"text1";
    self.model.text2 = @"text2";
    self.model.text3 = @"text3";
    self.model.text4 = @"text4";
    self.model.selectIndex = 0;
    
    NRDCellModel *model0 = [[NRDCellModel alloc] init];
    model0.cellType = NRDCellTypeLabTxfDef;
    model0.labText = @"0贷款";
    model0.txfPlaceHolder = @"0先生，您需要贷款么？";
    model0.keyString = @"text0";
    
    NRDCellModel *model1 = [[NRDCellModel alloc] init];
    model1.cellType = NRDCellTypeLabTxfNum;
    model1.labText = @"1贷款";
    model1.txfPlaceHolder = @"1先生，您需要贷款么？";
    model1.keyString = @"text1";
    
    NRDCellModel *model2 = [[NRDCellModel alloc] init];
    model2.cellType = NRDCellTypeLabTxfIdcard;
    model2.labText = @"2贷款";
    model2.txfPlaceHolder = @"2先生，您需要贷款么？";
    model2.keyString = @"text2";

    NRDCellModel *model3 = [[NRDCellModel alloc] init];
    model3.cellType = NRDCellTypeLabTxfPsw;
    model3.labText = @"3贷款";
    model3.txfPlaceHolder = @"3先生，您需要贷款么？";
    model3.keyString = @"text3";

    NRDCellModel *model4 = [[NRDCellModel alloc] init];
    model4.cellType = NRDCellTypeLabTxfArrowR;
    model4.labText = @"4贷款";
    model4.txfPlaceHolder = @"4先生，您需要贷款么？";
    model4.keyString = @"text4";
    
    NRDCellModel *model5 = [[NRDCellModel alloc] init];
    model5.cellType = NRDCellTypeLabSingleBtnSingleBtn;
    model5.labText = @"5贷款";
    model5.singleBtn0Title = @"50贷款";
    model5.singleBtn1Title = @"51贷款";
    model5.keyString = @"selectIndex";
    
    NRDCellModel *model6 = [[NRDCellModel alloc] init];
    model6.cellType = NRDCellTypeLabDetailLab0;
    model6.labText = @"6贷款";
    model6.detailLabText = @"6贷款贷款";
    
    self.cells = [@[
                    [@[
                       model0,
                       model1,
                       model2,
                       model3,
                       model4,
                       ] mutableCopy],
                    
                    [@[
                       model5,
                       model6,
                       ] mutableCopy],
                    
                    ] mutableCopy];

    NRDTableView *tv = [[NRDTableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [tv setCells:self.cells];
    [tv setModel:self.model];
    [self.view addSubview:tv];
    tv.nrdDelegate = self;
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.view.frame) - 30, CGRectGetWidth(self.view.frame), 30)];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnAct) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)tableView:(UITableView *)tableView cell:(UITableViewCell *)cell didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 4) {
            [cell setTefText:@"老板，贷款吗？"];
        }
    }
}

- (void)btnAct {

}

@end
