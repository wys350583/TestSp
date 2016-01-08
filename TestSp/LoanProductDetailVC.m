//
//  LoanProductDetailVC.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "LoanProductDetailVC.h"
#import "LoanProductDetailTV.h"
#import "TestModel.h"


@interface LoanProductDetailVC()

@end

@implementation LoanProductDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    TestModel *reqModel = [[TestModel alloc] init];
    reqModel.function_type = @"2";
    reqModel.function_condition = @"1.年龄20-60周岁";
    reqModel.function_file = @"1.身份证明\n2.工作证明\n3.收入证明";
    reqModel.function_min = @"10000";
    reqModel.function_max = @"300000";
    reqModel.function_month_rate = @"0.01";
    reqModel.function_manage_rate = @"0.013";
    reqModel.function_time_month = @"6,9,12,18,24";
    
    LoanProductDetailTV *tv = [[LoanProductDetailTV alloc] initWithFrame:self.view.bounds model:reqModel];
    [self.view addSubview:tv];
    
}

@end
