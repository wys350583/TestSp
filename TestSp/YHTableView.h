//
//  YHTableView.h
//  TestSp
//
//  Created by 一鸿温 on 15/12/29.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableViewCell+YHKit.h"

@protocol YHTableViewDelegate <NSObject>
@optional

- (void)tableView:(UITableView *)tableView cell:(UITableViewCell *)cell didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end

@interface YHTableView : UITableView

@property (nonatomic, weak)id <YHTableViewDelegate> yhDelegate;

- (void)setCells:(NSMutableArray *)cells;

- (void)setModel:(id)model;

@end
