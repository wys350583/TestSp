//
//  LoanProductDetailVC.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "LoanProductDetailVC.h"
#import "LoanProductDetailTV.h"

@interface LoanProductDetailVC()

@end

@implementation LoanProductDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LoanProductDetailTV *tv = [[LoanProductDetailTV alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:tv];
    
}

@end
