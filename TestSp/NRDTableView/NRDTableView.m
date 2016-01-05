//
//  NRDTableView.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/29.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDTableView.h"

@interface NRDTableView()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong)NSMutableArray *cells;

@property (nonatomic, strong)NSMutableArray *sections;

@property (nonatomic, strong)id model;

@end

@implementation NRDTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        [self setUI];
    }
    return self;
}

- (void)setSections:(NSMutableArray *)sections {
    _sections = sections;
}

- (void)setCells:(NSMutableArray *)cells {
    _cells = cells;
}

- (void)setModel:(id)model {
    _model = model;
    [self reloadData];
}

- (void)setUI {
    self.delegate = self;
    self.dataSource = self;
    self.backgroundColor = [UIColor colorWithRed:0.97 green:0.97 blue:0.97 alpha:1];
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableFooterView = [[UIView alloc] init];
}

#pragma mark -----tableView

//cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NRDCellModel *model = [self.cells[indexPath.section] objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[UITableViewCell cellString:model]];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithModel:model];
    }
    [cell setDisPlayData:model];
    [cell setReqData:self.model];
    
    return cell;
}

//select
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if ([self.nrdDelegate respondsToSelector:@selector(tableView:cell:didSelectRowAtIndexPath:)]) {
        [self.nrdDelegate tableView:tableView cell:[tableView cellForRowAtIndexPath:indexPath] didSelectRowAtIndexPath:indexPath];
    }
}

//section's count
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.cells.count;
}

//sectionHeader's height
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return self.sections ? 38 : 0.001;
}

//sectionHeader's view
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return [[UIView alloc] initWithModel:self.sections[section]];
}

//sectionFooter's height
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return section == [tableView numberOfSections] - 1 ? 49 : 0.001;
}

//sectionFooter's view
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return [[UIView alloc] init];
}

//cell's count
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *cells = self.cells[section];
    return cells.count;
}


//cell's height
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 54;
}

@end
