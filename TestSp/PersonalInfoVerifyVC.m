//
//  PersonalInfoVerifyVC.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/7.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "PersonalInfoVerifyVC.h"
#import "PersonalInfoVerifyTV.h"
#import "XNVerifyRequest.h"

@interface PersonalInfoVerifyVC()

@property (nonatomic, strong)XNVerifyRequest *request;

@end

@implementation PersonalInfoVerifyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.request = [[XNVerifyRequest alloc] init];
    
    PersonalInfoVerifyTV *tableView = [[PersonalInfoVerifyTV alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [tableView setModel:self.request];
    [self.view addSubview:tableView];
}

@end
