//
//  UIView+NRDKit.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/5.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "UIView+NRDKit.h"

@implementation UIView (NRDKit)

- (id)initWithModel:(NRDSectionModel *)model {
    self = [self init];
    if (self) {
        self = [self sectionInit:model];
    }
    return self;
}

- (id)sectionInit:(NRDSectionModel *)model {
    Class setionClass = NSClassFromString([[self class] sectionString:model]);
    id section = [[setionClass alloc] init];
    if ([section respondsToSelector:@selector(setDisplayData:)]) {
        [section performSelector:@selector(setDisplayData:) withObject:model];
    }
    
    return section;
}

- (void)setDisplayData:(NRDSectionModel *)model {

}

+ (NSString *)sectionString:(NRDSectionModel *)model {
    return self.sectionDict[@(model.sectionType)];
}

+ (NSDictionary *)sectionDict {
    static NSDictionary *dict;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dict = @{
                 @(NRDSectionTypeNormalLab) :                    @"NRDNormalLabSection",
                 @(NRDSectionTypeNormalLab_D_DetailLab) :        @"NRDNormalLab_D_DetailLabSection",
                 @(NRDSectionTypeNormalImgVLab) :                @"NRDNormalImgVLabSection",
                 @(NRDSectionTypeNormalImgVLab_D_DetailLab) :    @"NRDNormalImgVLab_D_DetailLabSection",
                 
                 @(NRDSectionTypeHorzLineLab) :                  @"NRDHorzLineLabSection",
                 @(NRDSectionTypeHorzLineLab_D_DetailLab) :      @"NRDHorzLineLab_D_DetailLabSection",
                 @(NRDSectionTypeHorzLineImgVLab) :              @"NRDHorzLineImgVLabSection",
                 @(NRDSectionTypeHorzLineImgVLab_D_DetailLab) :  @"NRDHorzLineImgVLab_D_DetailLabSection",
                 };
    });
    return dict;
}

@end
