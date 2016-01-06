//
//  UITableViewCell+NRDCell.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/26.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "UITableViewCell+NRDCell.h"

@implementation UITableViewCell (NRDCell)

- (id)initWithModel:(NRDCellModel *)model {
    self = [self init];
    if (self) {
        self = [self cellInit:model];
    }
    return self;
}

- (id)cellInit:(NRDCellModel *)model {
    Class cellClass = NSClassFromString([[self class] cellString:model]);
    id cell = [[cellClass alloc] init];
    if ([cell respondsToSelector:@selector(setDisplayData:)]) {
        [cell performSelector:@selector(setDisplayData:) withObject:model];
    }
    return cell;
}

+ (NSString *)cellString:(NRDCellModel *)model {
    return self.cellDict[@(model.cellType)];
}

+ (NSDictionary *)cellDict {
    static NSDictionary *dict;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dict = @{
                 //DisplayCells
                 @(NRDCellTypeLab) :                         @"NRDDisplayLabelCell",
                 @(NRDCellTypeDisplayMutiRowLab):            @"NRDDisplayMutiRowLabCell",
                 @(NRDCellTypeLabArrowR) :                   @"NRDLabelArrowRightCell",
                 @(NRDCellTypeLabDetailLab) :                @"NRDLabelDetailLabelCell",
                 @(NRDCellTypeLabDetailLab0) :               @"NRDLabelDetailLabelCell0",
                 @(NRDCellTypeLabDetailLabArrowR) :          @"NRDLabelDetailLabelArrowRightCell",
                 @(NRDCellTypeLab_D_DetailLab) :             @"NRDLabel_D_DetailLabelCell",
                 @(NRDCellTypeLab_D_DetailLabArrowR) :       @"NRDLabel_D_DetailLabelArrowRightCell",
                 
                 @(NRDCellTypeImgVLab) :                     @"NRDImageLabelCell",
                 @(NRDCellTypeImgVLabArrowR) :               @"NRDImageLabelArrowRightCell",
                 @(NRDCellTypeImgVLabDetailLab) :            @"NRDImageLabelDetailLabelCell",
                 @(NRDCellTypeImgVLabDetailLabArrowR) :      @"NRDImageLabelDetailLabelArrowRightCell",
                 @(NRDCellTypeImgVLab_D_DetailLab) :         @"NRDImageLabel_D_DetailLabelCell",
                 @(NRDCellTypeImgVLab_D_DetailLabArrowR) :   @"NRDImageLabel_D_DetailLabelArrowRightCell",
                 
                 
                 //FormCells
                 @(NRDCellTypeLabTxfDef) :                   @"NRDLabelTextFieldCell",
                 @(NRDCellTypeLabTxfNum) :                   @"NRDLabelTextFieldNumCell",
                 @(NRDCellTypeLabTxfIdcard) :                @"NRDLabelTextFieldIdcardCell",
                 @(NRDCellTypeLabTxfPsw) :                   @"NRDLabelTextFieldPswCell",
                 @(NRDCellTypeLabTxfArrowR) :                @"NRDLabelTextFieldArrowRightCell",
                 
                 @(NRDCellTypeLabSingleBtnSingleBtn) :       @"NRDLabelSingleBtnSingleBtnCell",
                 
                 
                 
                 @(NRDCellTypeImgVTxfDef) :                  @"NRDImageTextFieldCell",
                 @(NRDCellTypeImgVTxfNum) :                  @"NRDImageTextFieldNumCell",
                 @(NRDCellTypeImgVTxfIdcard) :               @"NRDImageTextFieldIdcardCell",
                 @(NRDCellTypeImgVTxfPsw) :                  @"NRDImageTextFieldPswCell",
                 @(NRDCellTypeImgVTxfArrowR) :               @"NRDImageTextFieldArrowRightCell",
                 
                 @(NRDCellTypeImgVSingleBtnSingleBtn) :      @"NRDImageSingleBtnSingleBtnCell",
                 
                 };
    });
    return dict;
}

- (void)setDisplayData:(NRDCellModel *)model {
    if ([self respondsToSelector:@selector(setDisplayData:)]) {
        [self performSelector:@selector(setDisplayData:) withObject:model];
    }
}

- (void)setReqData:(id)reqModel {
    if ([self respondsToSelector:@selector(setReqData:)]) {
        [self performSelector:@selector(setReqData:) withObject:reqModel];
    }
}

- (void)setTefText:(NSDictionary *)textDict {
    if ([self respondsToSelector:@selector(setTefText:)]) {
        [self performSelector:@selector(setTefText:) withObject:textDict];
    }
}

@end
