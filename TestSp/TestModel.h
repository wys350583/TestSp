//
//  TestModel.h
//  TestSp
//
//  Created by 一鸿温 on 15/12/28.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestModel : NSObject

@property (nonatomic, strong)NSString *text0;
@property (nonatomic, strong)NSString *text1;
@property (nonatomic, strong)NSString *text2;
@property (nonatomic, strong)NSString *text3;
@property (nonatomic, strong)NSString *text4;
@property (nonatomic, assign)NSInteger selectIndex;

@property (nonatomic, strong)NSString *function_condition;
@property (nonatomic, strong)NSString *function_file;

@property (nonatomic, strong)NSString *function_min;
@property (nonatomic, strong)NSString *function_max;
@property (nonatomic, strong)NSString *function_month_rate;
@property (nonatomic, strong)NSString *function_manage_rate;
@property (nonatomic, strong)NSString *function_time_month;

@property (nonatomic, strong)NSString *function_type;

@end
