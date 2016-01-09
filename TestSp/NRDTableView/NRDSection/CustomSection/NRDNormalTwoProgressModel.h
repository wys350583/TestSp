//
//  NRDNormalTwoProgressModel.h
//  NRD
//
//  Created by 一鸿温 on 16/1/8.
//  Copyright © 2016年 深圳市小牛资本管理集团. All rights reserved.
//

#import "NRDSectionModel.h"

typedef NS_ENUM(NSInteger, NRDNormalTwoProgressType) {
    NRDNormalTwoProgressTypeFirst = 0,
    NRDNormalTwoProgressTypeSecond,
};

@interface NRDNormalTwoProgressModel : NRDSectionModel

@property (nonatomic, assign)NRDNormalTwoProgressType progressType;

@property (nonatomic, strong)NSArray *labelTexts;

@property (nonatomic, strong)NSArray *observerPropertys;

@end
