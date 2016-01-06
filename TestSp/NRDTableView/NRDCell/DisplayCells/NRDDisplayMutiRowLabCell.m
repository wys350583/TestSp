//
//  NRDDisplayMutiRowCell.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/6.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "NRDDisplayMutiRowLabCell.h"

@implementation NRDDisplayMutiRowLabCell

- (instancetype)init
{
    self = [super initWithReuseIdentifier:NSStringFromClass([self class])];
    if (self) {
        
    }
    return self;
}

- (void)setUI {
    [super setUI];
    
    self.lab.numberOfLines = 0;
    self.lab.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1];
    
}

- (void)setDisplayData:(NRDCellModel *)model {
    [super setDisplayData:model];
    NSString *labText = model.labText ? model.labText : @"";
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labText];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.alignment = NSTextAlignmentLeft;
    paragraphStyle.lineSpacing = 10;  //行自定义行高度
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, labText.length)];
    self.lab.attributedText = attributedString;
    [self.lab sizeToFit];
}

- (void)setReqData:(id)reqModel {
    if (reqModel && self.displayModel.keyString) {
        NSString *labText = [reqModel valueForKey:self.displayModel.keyString];
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labText];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.alignment = NSTextAlignmentLeft;
        paragraphStyle.lineSpacing = [labText rangeOfString:@"\n"].location != NSNotFound ? 10 : 0;  //行自定义行高度
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, labText.length)];
        self.lab.attributedText = attributedString;
        [self.lab sizeToFit];
    }
}


@end
