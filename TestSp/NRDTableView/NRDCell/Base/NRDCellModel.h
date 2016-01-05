//
//  NRDCellModel.h
//  TestSp
//
//  Created by 一鸿温 on 15/12/28.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, NRDCellType) {
    //displayCells
    NRDCellTypeLab = 0,
    NRDCellTypeLabArrowR,
    NRDCellTypeLabDetailLab,
    NRDCellTypeLabDetailLab0,
    NRDCellTypeLabDetailLabArrowR,
    NRDCellTypeLab_D_DetailLab,
    NRDCellTypeLab_D_DetailLabArrowR,
    
    NRDCellTypeImgVLab,
    NRDCellTypeImgVLabArrowR,
    NRDCellTypeImgVLabDetailLab,
    NRDCellTypeImgVLabDetailLabArrowR,
    NRDCellTypeImgVLab_D_DetailLab,
    NRDCellTypeImgVLab_D_DetailLabArrowR,
    
    //formCells
    NRDCellTypeLabTxfDef,
    NRDCellTypeLabTxfNum,
    NRDCellTypeLabTxfIdcard,
    NRDCellTypeLabTxfPsw,
    NRDCellTypeLabTxfArrowR,
    
    NRDCellTypeLabSingleBtnSingleBtn,
    
    NRDCellTypeImgVTxfDef,
    NRDCellTypeImgVTxfNum,
    NRDCellTypeImgVTxfIdcard,
    NRDCellTypeImgVTxfPsw,
    NRDCellTypeImgVTxfArrowR,
    
    NRDCellTypeImgVSingleBtnSingleBtn,
    
};

@interface NRDCellModel : NSObject

@property (nonatomic, assign)NRDCellType cellType;

@property (nonatomic, assign)float cellHeight;

@property (nonatomic, strong)NSString *labText;

@property (nonatomic, strong)NSString *detailLabText;

@property (nonatomic, strong)NSString *txfPlaceHolder;

@property (nonatomic, strong)NSString *singleBtnImageNameNormal;

@property (nonatomic, strong)NSString *singleBtnImageNameSelected;

@property (nonatomic, strong)NSString *singleBtn0Title;

@property (nonatomic, strong)NSString *singleBtn1Title;

//左边不是0右边不是1时设
@property (nonatomic, assign)NSInteger singleBtn0SelectedKey;

@property (nonatomic, assign)NSInteger singleBtn1SelectedKey;

@property (nonatomic, strong)NSString *imgVImageName;

@property (nonatomic, strong)NSString *keyString;

- (instancetype)initWithCellType:(NRDCellType)type;

@end
