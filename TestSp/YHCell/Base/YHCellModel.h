//
//  YHCellModel.h
//  TestSp
//
//  Created by 一鸿温 on 15/12/28.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, YHCellType) {
    YHCellTypeLab = 0,
    YHCellTypeLabArrowR,
    YHCellTypeLabDetailLab,
    YHCellTypeLabDetailLab0,
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

@interface YHCellModel : NSObject

@property (nonatomic, assign)YHCellType cellType;

@property (nonatomic, strong)NSString *labText;

@property (nonatomic, strong)NSString *detailLabText;

@property (nonatomic, strong)NSString *txfPlaceHolder;

@property (nonatomic, strong)NSString *singleBtnImageNameNormal;

@property (nonatomic, strong)NSString *singleBtnImageNameSelected;

@property (nonatomic, strong)NSString *singleBtn0Title;

@property (nonatomic, strong)NSString *singleBtn1Title;

@property (nonatomic, strong)NSString *imgVImageName;

@property (nonatomic, strong)NSString *keyString;

@end
