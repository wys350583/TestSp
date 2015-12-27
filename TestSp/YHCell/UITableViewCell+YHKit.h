//
//  UITableViewCell+YHKit.h
//  TestSp
//
//  Created by 一鸿温 on 15/12/26.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, YHCellType) {
    YHCellTypeLab = 0,
    YHCellTypeLabArrowR,
    YHCellTypeLabDetailLab,
    YHCellTypeLabDetailLabArrowR,
    YHCellTypeLab_D_DetailLab,
    YHCellTypeLab_D_DetailLabArrowR,
    
    YHCellTypeLabTxfDef,
    YHCellTypeLabTxfNum,
    YHCellTypeLabTxfIdcard,
    YHCellTypeLabTxfPsw,
    YHCellTypeLabTxfArrowR,
    
    YHCellTypeLabSingleBtnSingleBtn,
    
    YHCellTypeImgV,
    YHCellTypeImgVLab,
    YHCellTypeImgVLabArrowR,
    YHCellTypeImgVLabDetailLab,
    YHCellTypeImgVLabDetailLabArrowR,
    YHCellTypeImgVLab_D_DetailLab,
    YHCellTypeImgVLab_D_DetailLabArrowR,
    
    YHCellTypeImgVTxfDef,
    YHCellTypeImgVTxfNum,
    YHCellTypeImgVTxfIdcard,
    YHCellTypeImgVTxfPsw,
    YHCellTypeImgVTxfArrowR,
    
    YHCellTypeImgVSingleBtnSingleBtn,
    
//    YHCellTypeImgVLabTxfDef,
//    YHCellTypeImgVLabTxfNum,
//    YHCellTypeImgVLabTxfPsw,
//    YHCellTypeImgVLabTxfIdcard,
//    YHCellTypeImgVLabTxfArrowR,
    
};

@interface UITableViewCell (YHKit)

- (id)initWithType:(YHCellType)type;

@end
