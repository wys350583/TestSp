//
//  NRDSectionModel.h
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, NRDSectionType) {
    NRDSectionTypeNormalLab = 0,
    NRDSectionTypeNormalLab_D_DetailLab,
    NRDSectionTypeNormalImgVLab,
    NRDSectionTypeNormalImgVLab_D_DetailLab,
    
    NRDSectionTypeHorzLineLab,
    NRDSectionTypeHorzLineLab_D_DetailLab,
    NRDSectionTypeHorzLineImgVLab,
    NRDSectionTypeHorzLineImgVLab_D_DetailLab,
    
    NRDSectionTypeNormalTwoProgress,
};

@interface NRDSectionModel : NSObject

@property (nonatomic, assign)NRDSectionType sectionType;

@property (nonatomic, assign)float sectionHeight;

@property (nonatomic, strong)NSString *labText;

@property (nonatomic, strong)NSString *detailLabText;

@property (nonatomic, strong)NSString *imgVImageName;

- (instancetype)initWithSectionType:(NRDSectionType)type;

@end
