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

- (id)initWithModel:(YHCellModel *)model {
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
                 @(YHCellTypeLab) :                         @"YHLabelCell",
                 @(YHCellTypeLabArrowR) :                   @"YHLabelArrowRightCell",
                 @(YHCellTypeLabDetailLab) :                @"YHLabelDetailLabelCell",
                 @(YHCellTypeLabDetailLab0) :               @"YHLabelDetailLabelCell0",
                 @(YHCellTypeLabDetailLabArrowR) :          @"YHLabelDetailLabelArrowRightCell",
                 @(YHCellTypeLab_D_DetailLab) :             @"YHLabel_D_DetailLabelCell",
                 @(YHCellTypeLab_D_DetailLabArrowR) :       @"YHLabel_D_DetailLabelArrowRightCell",
                 
                 @(YHCellTypeLabTxfDef) :                   @"YHLabelTextFieldCell",
                 @(YHCellTypeLabTxfNum) :                   @"YHLabelTextFieldNumCell",
                 @(YHCellTypeLabTxfIdcard) :                @"YHLabelTextFieldIdcardCell",
                 @(YHCellTypeLabTxfPsw) :                   @"YHLabelTextFieldPswCell",
                 @(YHCellTypeLabTxfArrowR) :                @"YHLabelTextFieldArrowRightCell",
                 
                 @(YHCellTypeLabSingleBtnSingleBtn) :       @"YHLabelSingleBtnSingleBtnCell",
                 
                 @(YHCellTypeImgV) :                        @"YHImageCell",
                 @(YHCellTypeImgVLab) :                     @"YHImageLabelCell",
                 @(YHCellTypeImgVLabArrowR) :               @"YHImageLabelArrowRightCell",
                 @(YHCellTypeImgVLabDetailLab) :            @"YHImageLabelDetailLabelCell",
                 @(YHCellTypeImgVLabDetailLabArrowR) :      @"YHImageLabelDetailLabelArrowRightCell",
                 @(YHCellTypeImgVLab_D_DetailLab) :         @"YHImageLabel_D_DetailLabelCell",
                 @(YHCellTypeImgVLab_D_DetailLabArrowR) :   @"YHImageLabel_D_DetailLabelArrowRightCell",
                 
                 @(YHCellTypeImgVTxfDef) :                  @"YHImageTextFieldCell",
                 @(YHCellTypeImgVTxfNum) :                  @"YHImageTextFieldNumCell",
                 @(YHCellTypeImgVTxfIdcard) :               @"YHImageTextFieldIdcardCell",
                 @(YHCellTypeImgVTxfPsw) :                  @"YHImageTextFieldPswCell",
                 @(YHCellTypeImgVTxfArrowR) :               @"YHImageTextFieldArrowRightCell",
                 
                 @(YHCellTypeImgVSingleBtnSingleBtn) :      @"YHImageSingleBtnSingleBtnCell",
                 
                 };
    });
    return dict;
}

+ (NSString *)cellString:(YHCellModel *)model {
    return self.cellDict[@(model.cellType)];
}

- (id)cellInit:(YHCellModel *)model {
    Class cellClass = NSClassFromString([[self class] cellString:model]);
    id cell = [[cellClass alloc] init];
    if ([cell respondsToSelector:@selector(setDisPlayData:)]) {
        [cell performSelector:@selector(setDisPlayData:) withObject:model];
    }
    return cell;
}

- (void)setDisPlayData:(YHCellModel *)model {
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
