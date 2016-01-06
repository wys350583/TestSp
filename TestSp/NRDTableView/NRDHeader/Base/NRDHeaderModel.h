//
//  NRDHeaderModel.h
//  TestSp
//
//  Created by 一鸿温 on 16/1/6.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, NRDHeaderType) {
    NRDHeaderTypeImgV = 0,
    
};


@interface NRDHeaderModel : NSObject

@property (nonatomic, assign)NRDHeaderType headerType;

@property (nonatomic, strong)NSString *imgVImageName;

- (instancetype)initWithHeaderType:(NRDHeaderType)type;


@end
