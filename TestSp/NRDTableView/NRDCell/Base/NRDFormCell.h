//
//  NRDCell.h
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "NRDCell.h"


@interface NRDFormCell : NRDCell

@property (nonatomic, strong)UIView *bgView;

@property (nonatomic, strong)UIView *vertLine;

@property (nonatomic, strong)UIImageView *arrowRight;

- (void)hasArrowRight;

@end
