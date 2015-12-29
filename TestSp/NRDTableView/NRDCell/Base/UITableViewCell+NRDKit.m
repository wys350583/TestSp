//
//  UITableViewCell+NRDKit.m
//  TestSp
//
//  Created by 一鸿温 on 15/12/26.
//  Copyright © 2015年 wyh. All rights reserved.
//

#import "UITableViewCell+NRDKit.h"

#import "NRDLabelCell.h"
#import "NRDLabelArrowRightCell.h"
#import "NRDLabelDetailLabelCell.h"
#import "NRDLabelDetailLabelArrowRightCell.h"
#import "NRDLabel_D_DetailLabelCell.h"
#import "NRDLabel_D_DetailLabelArrowRightCell.h"

#import "NRDLabelTextFieldCell.h"
#import "NRDLabelTextFieldNumCell.h"
#import "NRDLabelTextFieldIdcardCell.h"
#import "NRDLabelTextFieldPswCell.h"
#import "NRDLabelTextFieldArrowRightCell.h"

#import "NRDLabelSingleBtnSingleBtnCell.h"

#import "NRDImageCell.h"
#import "NRDImageLabelCell.h"
#import "NRDImageLabelArrowRightCell.h"
#import "NRDImageLabelDetailLabelCell.h"
#import "NRDImageLabelDetailLabelArrowRightCell.h"
#import "NRDImageLabel_D_DetailLabelCell.h"
#import "NRDImageLabel_D_DetailLabelArrowRightCell.h"

#import "NRDImageTextFieldCell.h"
#import "NRDImageTextFieldNumCell.h"
#import "NRDImageTextFieldIdcardCell.h"
#import "NRDImageTextFieldPswCell.h"
#import "NRDImageTextFieldArrowRightCell.h"

#import "NRDImageSingleBtnSingleBtnCell.h"

@implementation UITableViewCell (NRDKit)

- (id)initWithModel:(NRDCellModel *)model {
    self = [self init];
    if (self) {
        self = [self cellInit:model];
    }
    return self;
}

+ (NSDictionary *)cellDict {
    static NSDictionary *dict;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dict = @{
                 @(NRDCellTypeLab) :                         @"NRDLabelCell",
                 @(NRDCellTypeLabArrowR) :                   @"NRDLabelArrowRightCell",
                 @(NRDCellTypeLabDetailLab) :                @"NRDLabelDetailLabelCell",
                 @(NRDCellTypeLabDetailLab0) :               @"NRDLabelDetailLabelCell0",
                 @(NRDCellTypeLabDetailLabArrowR) :          @"NRDLabelDetailLabelArrowRightCell",
                 @(NRDCellTypeLab_D_DetailLab) :             @"NRDLabel_D_DetailLabelCell",
                 @(NRDCellTypeLab_D_DetailLabArrowR) :       @"NRDLabel_D_DetailLabelArrowRightCell",
                 
                 @(NRDCellTypeLabTxfDef) :                   @"NRDLabelTextFieldCell",
                 @(NRDCellTypeLabTxfNum) :                   @"NRDLabelTextFieldNumCell",
                 @(NRDCellTypeLabTxfIdcard) :                @"NRDLabelTextFieldIdcardCell",
                 @(NRDCellTypeLabTxfPsw) :                   @"NRDLabelTextFieldPswCell",
                 @(NRDCellTypeLabTxfArrowR) :                @"NRDLabelTextFieldArrowRightCell",
                 
                 @(NRDCellTypeLabSingleBtnSingleBtn) :       @"NRDLabelSingleBtnSingleBtnCell",
                 
                 @(NRDCellTypeImgV) :                        @"NRDImageCell",
                 @(NRDCellTypeImgVLab) :                     @"NRDImageLabelCell",
                 @(NRDCellTypeImgVLabArrowR) :               @"NRDImageLabelArrowRightCell",
                 @(NRDCellTypeImgVLabDetailLab) :            @"NRDImageLabelDetailLabelCell",
                 @(NRDCellTypeImgVLabDetailLabArrowR) :      @"NRDImageLabelDetailLabelArrowRightCell",
                 @(NRDCellTypeImgVLab_D_DetailLab) :         @"NRDImageLabel_D_DetailLabelCell",
                 @(NRDCellTypeImgVLab_D_DetailLabArrowR) :   @"NRDImageLabel_D_DetailLabelArrowRightCell",
                 
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

+ (NSString *)cellString:(NRDCellModel *)model {
    return self.cellDict[@(model.cellType)];
}

- (id)cellInit:(NRDCellModel *)model {
    Class cellClass = NSClassFromString([[self class] cellString:model]);
    id cell = [[cellClass alloc] init];
    if ([cell respondsToSelector:@selector(setDisPlayData:)]) {
        [cell performSelector:@selector(setDisPlayData:) withObject:model];
    }
    return cell;
}

- (void)setDisPlayData:(NRDCellModel *)model {
    if ([self respondsToSelector:@selector(setDisPlayData:)]) {
        [self performSelector:@selector(setDisPlayData:) withObject:model];
    }
}

- (void)setReqData:(id)reqModel {
    if ([self respondsToSelector:@selector(setReqData:)]) {
        [self performSelector:@selector(setReqData:) withObject:reqModel];
    }
}

- (void)setTefText:(NSString *)text {
    if ([self respondsToSelector:@selector(setTefText:)]) {
        [self performSelector:@selector(setTefText:) withObject:text];
    }
}

@end
