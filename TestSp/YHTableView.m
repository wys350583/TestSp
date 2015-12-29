//
//  YHTableView.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/29.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "YHTableView.h"

@interface YHTableView()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong)NSMutableArray *cells;

@property (nonatomic, strong)id model;

@end

@implementation YHTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        [self setUI];
    }
    return self;
}

- (void)setCells:(NSMutableArray *)cells {
    _cells = cells;
}

- (void)setModel:(id)model {
    _model = model;
}

- (void)setUI {
    self.delegate = self;
    self.dataSource = self;
    
    self.tableFooterView = [[UIView alloc] init];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YHCellModel *model = [self.cells[indexPath.section] objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[UITableViewCell cellString:model]];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithModel:model];
    }
    [cell setDisPlayData:model];
    [cell setReqData:self.model];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if ([self.yhDelegate respondsToSelector:@selector(tableView:cell:didSelectRowAtIndexPath:)]) {
        [self.yhDelegate tableView:tableView cell:[tableView cellForRowAtIndexPath:indexPath] didSelectRowAtIndexPath:indexPath];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.cells.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *cells = self.cells[section];
    return cells.count;
}


@end
