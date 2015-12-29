//
//  ViewController.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/23.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "ViewController.h"
#import "YHTableView.h"
#import "TestModel.h"

@interface ViewController ()<YHTableViewDelegate>

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
    
    YHCellModel *model0 = [[YHCellModel alloc] init];
    model0.cellType = YHCellTypeLabTxfDef;
    model0.labText = @"0贷款";
    model0.txfPlaceHolder = @"0先生，您需要贷款么？";
    model0.keyString = @"text0";
    
    YHCellModel *model1 = [[YHCellModel alloc] init];
    model1.cellType = YHCellTypeLabTxfNum;
    model1.labText = @"1贷款";
    model1.txfPlaceHolder = @"1先生，您需要贷款么？";
    model1.keyString = @"text1";
    
    YHCellModel *model2 = [[YHCellModel alloc] init];
    model2.cellType = YHCellTypeLabTxfIdcard;
    model2.labText = @"2贷款";
    model2.txfPlaceHolder = @"2先生，您需要贷款么？";
    model2.keyString = @"text2";

    YHCellModel *model3 = [[YHCellModel alloc] init];
    model3.cellType = YHCellTypeLabTxfPsw;
    model3.labText = @"3贷款";
    model3.txfPlaceHolder = @"3先生，您需要贷款么？";
    model3.keyString = @"text3";

    YHCellModel *model4 = [[YHCellModel alloc] init];
    model4.cellType = YHCellTypeLabTxfArrowR;
    model4.labText = @"4贷款";
    model4.txfPlaceHolder = @"4先生，您需要贷款么？";
    model4.keyString = @"text4";
    
    YHCellModel *model5 = [[YHCellModel alloc] init];
    model5.cellType = YHCellTypeLabSingleBtnSingleBtn;
    model5.labText = @"5贷款";
    model5.singleBtn0Title = @"50贷款";
    model5.singleBtn1Title = @"51贷款";
    model5.keyString = @"selectIndex";
    
    YHCellModel *model6 = [[YHCellModel alloc] init];
    model6.cellType = YHCellTypeLabDetailLab0;
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

    YHTableView *tv = [[YHTableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [tv setCells:self.cells];
    [tv setModel:self.model];
    [self.view addSubview:tv];
    tv.yhDelegate = self;
    
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
