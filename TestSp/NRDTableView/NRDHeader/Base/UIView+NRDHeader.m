//
//  UIView+NRDHeader.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/6.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "UIView+NRDHeader.h"

@implementation UIView (NRDHeader)

- (id)initWithHeaderModel:(NRDHeaderModel *)model {
    self = [self init];
    if (self) {
        self = [self headerInit:model];
    }
    return self;
}

- (id)headerInit:(NRDHeaderModel *)model {
    Class setionClass = NSClassFromString([[self class] headerString:model]);
    id section = [[setionClass alloc] init];
    if ([section respondsToSelector:@selector(setDisplayData:)]) {
        [section performSelector:@selector(setDisplayData:) withObject:model];
    }
    
    return section;
}

+ (NSString *)headerString:(NRDHeaderModel *)model {
    return self.headerDict[@(model.headerType)];
}

+ (NSDictionary *)headerDict {
    static NSDictionary *dict;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dict = @{
                 @(NRDHeaderTypeImgV) :     @"NRDImgVHeader",
                 
                 };
    });
    return dict;
}

- (void)setDisplayData:(NRDHeaderModel *)model {
    
}

@end
