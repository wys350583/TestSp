//
//  UITableViewCell+YHKit.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/26.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "UITableViewCell+YHKit.h"

#import "YHLabelCell.h"
#import "YHLabelArrowRightCell.h"
#import "YHLabelDetailLabelCell.h"
#import "YHLabelDetailLabelArrowRightCell.h"
#import "YHLabel_D_DetailLabelCell.h"
#import "YHLabel_D_DetailLabelArrowRightCell.h"

#import "YHLabelTextFieldCell.h"
#import "YHLabelTextFieldNumCell.h"
#import "YHLabelTextFieldIdcardCell.h"
#import "YHLabelTextFieldPswCell.h"
#import "YHLabelTextFieldArrowRightCell.h"

#import "YHLabelSingleBtnSingleBtnCell.h"

#import "YHImageCell.h"
#import "YHImageLabelCell.h"
#import "YHImageLabelArrowRightCell.h"
#import "YHImageLabelDetailLabelCell.h"
#import "YHImageLabelDetailLabelArrowRightCell.h"
#import "YHImageLabel_D_DetailLabelCell.h"
#import "YHImageLabel_D_DetailLabelArrowRightCell.h"

#import "YHImageTextFieldCell.h"
#import "YHImageTextFieldNumCell.h"
#import "YHImageTextFieldIdcardCell.h"
#import "YHImageTextFieldPswCell.h"
#import "YHImageTextFieldArrowRightCell.h"

#import "YHImageSingleBtnSingleBtnCell.h"

@implementation UITableViewCell (YHKit)

- (id)initWithType:(YHCellType)type {
    self = [self init];
    if (self) {
        self = [self cellInit:type];
    }
    return self;
}

- (id)cellInit:(YHCellType)type {
    UITableViewCell *cell;
    switch (type) {
        case YHCellTypeLab:
        {
            cell = [[YHLabelCell alloc] init];
        }
            break;
            
        case YHCellTypeLabArrowR:
        {
            cell = [[YHLabelArrowRightCell alloc] init];
        }
            break;
            
        case YHCellTypeLabDetailLab:
        {
            cell = [[YHLabelDetailLabelCell alloc] init];
        }
            break;
            
        case YHCellTypeLabDetailLabArrowR:
        {
            cell = [[YHLabelDetailLabelArrowRightCell alloc] init];
        }
            break;
            
        case YHCellTypeLab_D_DetailLab:
        {
            cell = [[YHLabel_D_DetailLabelCell alloc] init];
        }
            break;

        case YHCellTypeLab_D_DetailLabArrowR:
        {
            cell = [[YHLabel_D_DetailLabelArrowRightCell alloc] init];
        }
            break;
            
        ///////////////////////////////////////////////////////////////

            
        case YHCellTypeLabTxfDef:
        {
            cell = [[YHLabelTextFieldCell alloc] init];
        }
            break;
            
        case YHCellTypeLabTxfNum:
        {
            cell = [[YHLabelTextFieldNumCell alloc] init];
        }
            break;
            
        case YHCellTypeLabTxfIdcard:
        {
            cell = [[YHLabelTextFieldIdcardCell alloc] init];
        }
            break;

        case YHCellTypeLabTxfPsw:
        {
            cell = [[YHLabelTextFieldPswCell alloc] init];
        }
            break;
            
        case YHCellTypeLabTxfArrowR:
        {
            cell = [[YHLabelTextFieldArrowRightCell alloc] init];
        }
            break;
            
        ///////////////////////////////////////////////////////////////
            
        case YHCellTypeLabSingleBtnSingleBtn:
        {
            cell = [[YHLabelSingleBtnSingleBtnCell alloc] init];
        }
            break;
        
        ///////////////////////////////////////////////////////////////

        case YHCellTypeImgV:
        {
            cell = [[YHImageCell alloc] init];
        }
            break;
            
        case YHCellTypeImgVLab:
        {
            cell = [[YHImageLabelCell alloc] init];
        }
            break;
            
        case YHCellTypeImgVLabArrowR:
        {
            cell = [[YHImageLabelArrowRightCell alloc] init];
        }
            break;
            
        case YHCellTypeImgVLabDetailLab:
        {
            cell = [[YHImageLabelDetailLabelCell alloc] init];
        }
            break;
            
        case YHCellTypeImgVLabDetailLabArrowR:
        {
            cell = [[YHImageLabelDetailLabelArrowRightCell alloc] init];
        }
            break;
            
        case YHCellTypeImgVLab_D_DetailLab:
        {
            cell = [[YHImageLabel_D_DetailLabelCell alloc] init];
        }
            break;
            
        case YHCellTypeImgVLab_D_DetailLabArrowR:
        {
            cell = [[YHImageLabel_D_DetailLabelArrowRightCell alloc] init];
        }
            break;
            
        ///////////////////////////////////////////////////////////////

        case YHCellTypeImgVTxfDef:
        {
            cell = [[YHImageTextFieldCell alloc] init];
        }
            break;
            
        case YHCellTypeImgVTxfNum:
        {
            cell = [[YHImageTextFieldNumCell alloc] init];
        }
            break;

        case YHCellTypeImgVTxfIdcard:
        {
            cell = [[YHImageTextFieldIdcardCell alloc] init];
        }
            break;
            
        case YHCellTypeImgVTxfPsw:
        {
            cell = [[YHImageTextFieldPswCell alloc] init];
        }
            break;
            
        case YHCellTypeImgVTxfArrowR:
        {
            cell = [[YHImageTextFieldArrowRightCell alloc] init];
        }
            break;
            
        ///////////////////////////////////////////////////////////////

        case YHCellTypeImgVSingleBtnSingleBtn:
        {
            cell = [[YHImageSingleBtnSingleBtnCell alloc] init];
        }
            break;
            
        ///////////////////////////////////////////////////////////////
            
        default:
        {
            cell = [[UITableViewCell alloc] init];
        }
            break;
    }
    return cell;
}

@end
