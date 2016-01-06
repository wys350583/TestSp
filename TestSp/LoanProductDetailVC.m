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
    reqModel.function_condition = @"1.年龄20-60周岁";
    reqModel.function_file = @"1.身份证明\n2.工作证明\n3.收入证明";
    
    LoanProductDetailTV *tv = [[LoanProductDetailTV alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:tv];
    [tv setModel:reqModel];
    
}

@end
