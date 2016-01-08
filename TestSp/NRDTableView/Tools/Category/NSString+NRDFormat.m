//
//  NSString+NRDFormat.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/6.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "NSString+NRDFormat.h"

@implementation NSString (NRDFormat)

- (NSString *)toString {
    return [NSString stringWithFormat:@"%@", self];
}

- (NSString *)append:(NSString *)string {
    return [NSString stringWithFormat:@"%@%@", self, string];
}

- (NSString *)tenThousand {
    return [NSString stringWithFormat:@"%.1f", (float)[self floatValue] / 10000];
}

- (NSString *)percentage {
    return [NSString stringWithFormat:@"%.2f%%", [self floatValue] * 100];
}

- (NSString *)rate {
    NSArray *rateArray = [self componentsSeparatedByString:@","];
    if (rateArray.count > 0) {
        float min = [rateArray[0] floatValue];
        float max = [rateArray[0] floatValue];
        for (NSString *rate in rateArray) {
            float ratef = [rate floatValue];
            if (ratef < min) {
                min = ratef;
            }
            if (ratef > max) {
                max = ratef;
            }
        }
        if (min == max) {
            return [NSString stringWithFormat:@"%.2f%%", min * 100];
        }
        if (min < max) {
            return [NSString stringWithFormat:@"%.2f%%-%.2f%%", min * 100, max * 100];
        }
    }
    return @"";
}

@end
