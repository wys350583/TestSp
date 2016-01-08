//
//  NSString+NRDFormat.h
//  TestSp
//
//  Created by 一鸿温 on 16/1/6.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (NRDFormat)

- (NSString *)toString;

- (NSString *)append:(NSString *)string;

- (NSString *)tenThousand;

- (NSString *)percentage;

- (NSString *)rate;

@end
