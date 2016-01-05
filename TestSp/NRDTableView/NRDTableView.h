//
//  NRDTableView.h
//  TestSp
//
//  Created by 一鸿温 on 15/12/29.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableViewCell+NRDKit.h"
#import "UIView+NRDKit.h"

@protocol NRDTableViewDelegate <NSObject>
@optional

- (void)tableView:(UITableView *)tableView cell:(UITableViewCell *)cell didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end

@interface NRDTableView : UITableView

@property (nonatomic, weak)id <NRDTableViewDelegate> nrdDelegate;

- (void)setUI;

- (void)setSections:(NSMutableArray *)sections;

- (void)setCells:(NSMutableArray *)cells;

- (void)setModel:(id)model;

@end
