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
#import "PersonalInfoVerifyTV.h"

@interface ViewController ()<NRDTableViewDelegate>

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
    
    PersonalInfoVerifyTV *tv = [[PersonalInfoVerifyTV alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
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
            [cell setTefText:@{@"daikuan" : @"老板，贷款吗？"}] ;
        }
    }
}

- (void)btnAct {

}

@end
