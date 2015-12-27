//
//  ViewController.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/23.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "ViewController.h"
#import "UITableViewCell+YHKit.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *tv = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:tv];
    tv.delegate = self;
    tv.dataSource = self;
    tv.tableFooterView = [[UIView alloc] init];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithType:YHCellTypeImgVSingleBtnSingleBtn];
    }
    
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

@end

//1.0需要用到cell默认的textLabel这样设
//    if ([tv respondsToSelector:@selector(setSeparatorInset:)]) {
//        [tv setSeparatorInset:UIEdgeInsetsZero];
//    }
//
//    if ([tv respondsToSelector:@selector(setLayoutMargins:)]) {
//        [tv setLayoutMargins:UIEdgeInsetsZero];
//    }

//1.1需要用到cell默认的textLabel这样设
//- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
//
//{
//    if (indexPath.row == [tableView numberOfRowsInSection:indexPath.section] - 1) {
//        if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
//            [cell setSeparatorInset:UIEdgeInsetsMake(0, 0, 0, CGRectGetWidth(self.view.frame))];
//        }
//
//        if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
//            [cell setLayoutMargins:UIEdgeInsetsZero];
//        }
//    }
//}
