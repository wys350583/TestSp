//
//  NRDNormalTwoProgressSection.m
//  TestSp
//
//  Created by 一鸿温 on 16/1/7.
//  Copyright © 2016年 wyh. All rights reserved.
//

#import "NRDNormalTwoProgressSection.h"
#import "NRDNormalTwoProgressModel.h"

@interface NRDNormalTwoProgressSection()

@property (nonatomic, strong)NSMutableArray <CAShapeLayer *> *circleLayers;

@property (nonatomic, strong)NSMutableArray <UIProgressView *> *progressViews;

@property (nonatomic, strong)NSMutableArray <UILabel *> *labels;

@property (nonatomic, assign)CGFloat total;

@property (nonatomic, assign)CGFloat num;

@property (nonatomic, assign)CGFloat progress;

@property (nonatomic, strong)NRDNormalTwoProgressModel *model;

@property (nonatomic, assign)NSInteger progressViewIndex;

@property (nonatomic, assign)CGColorRef normalColor;

@property (nonatomic, assign)CGColorRef selectedColor;

@end

@implementation NRDNormalTwoProgressSection
{
    CGFloat _twoCircleCenterWidth;
    CGFloat _circleRadius;
    CGFloat _circleCenterX;
    CGFloat _circleCenterY;

    CGFloat _lineWidth;
}

- (void)setUI {
    [super setUI];
    
    self.backgroundColor = [UIColor whiteColor];
    
    _twoCircleCenterWidth = kWidth / 2 - 25;
    _circleRadius = 4;
    _circleCenterX = 25;
    _circleCenterY = 16;
    
    _lineWidth = _twoCircleCenterWidth - 2 * _circleRadius;
    
    self.normalColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1].CGColor;
    self.selectedColor = [UIColor orangeColor].CGColor;
    
    [self setLine];
    
    [self setCircle];
    
    [self setLabel];

}

- (void)setCircle {
    self.circleLayers = @[].mutableCopy;
    for (NSInteger i = 0; i < 3; i++) {
        CGPoint arcCenter = CGPointMake(_circleCenterX + _twoCircleCenterWidth * i, _circleCenterY);
        UIBezierPath *circlePath = [UIBezierPath bezierPathWithArcCenter:arcCenter
                                                                  radius:_circleRadius
                                                              startAngle:M_PI
                                                                endAngle:-M_PI
                                                               clockwise:NO];
        
        CAShapeLayer *layer = [CAShapeLayer layer];
        layer.path = circlePath.CGPath;
        layer.strokeColor = self.normalColor;
        layer.fillColor = [UIColor whiteColor].CGColor;
        layer.lineWidth = 1.2;
        [self.layer addSublayer:layer];
        [self.circleLayers addObject:layer];
    }
}

- (void)setLine {
    self.progressViews = @[].mutableCopy;
    for (NSInteger i = 0; i < 2; i++) {
        UIProgressView *progressView = [[UIProgressView alloc] initWithFrame:CGRectMake((_circleCenterX + _circleRadius) + _twoCircleCenterWidth * i, _circleCenterY - 1, _lineWidth, 1)];
        progressView.tintColor = [UIColor orangeColor];
        [self addSubview:progressView];
        [self.progressViews addObject:progressView];
    }
}

- (void)setLabel {
    self.labels = @[].mutableCopy;
    for (NSInteger i = 0; i < 3; i++) {
        UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0 + _twoCircleCenterWidth * i, 25, 50, 10)];
        [self addSubview:lable];
        lable.font = [UIFont systemFontOfSize:10];
        lable.textAlignment = NSTextAlignmentCenter;
        lable.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1];
        [self.labels addObject:lable];
    }
}

- (void)setDisplayData:(NRDNormalTwoProgressModel *)model {
    self.model = model;
    self.progressViewIndex = (NSInteger)model.progressType;
    [self setOrangeCircle];
    [self setOrangeLine];
    [self setOrangeLabel];
}

- (void)setOrangeCircle {
    for (NSInteger i = 0; i < self.circleLayers.count; i++) {
        if (i < self.progressViewIndex) {
            self.circleLayers[i].strokeColor = self.selectedColor;
            self.circleLayers[i].fillColor = self.selectedColor;
        }
    }
}

- (void)setOrangeLine {
    for (NSInteger i = 0; i < self.progressViews.count; i++) {
        if (i < self.progressViewIndex) {
            self.progressViews[i].progress = 1;
        }
    }
}

- (void)setOrangeLabel {
    for (NSInteger i = 0; i < self.labels.count; i++) {
        self.labels[i].text = self.model.labelTexts[i];
        if (i < self.progressViewIndex) {
            self.labels[i].textColor = [UIColor orangeColor];
        }
    }
}

- (void)setProgress:(CGFloat)progress {
    _progress = progress;
    [self animation];
}

- (void)animation {
    [self.progressViews[self.progressViewIndex] setProgress:self.progress animated:YES];

    [RACObserve(self.progressViews[self.progressViewIndex], progress) subscribeNext:^(id x) {
        if ([x floatValue] > 0) {
            self.circleLayers[self.progressViewIndex].fillColor = self.selectedColor;
            self.circleLayers[self.progressViewIndex].strokeColor = self.selectedColor;
            self.labels[self.progressViewIndex].textColor = [UIColor orangeColor];
        }
        else {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

                self.circleLayers[self.progressViewIndex].fillColor = [UIColor whiteColor].CGColor;
                self.circleLayers[self.progressViewIndex].strokeColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1].CGColor;
                self.labels[self.progressViewIndex].textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1];

            });
        }
        if (self.model.progressType == NRDNormalTwoProgressTypeSecond && [x floatValue] == 1) {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                self.circleLayers[self.circleLayers.count - 1].fillColor = self.selectedColor;
                self.circleLayers[self.circleLayers.count - 1].strokeColor = self.selectedColor;
                self.labels[self.circleLayers.count - 1].textColor = [UIColor orangeColor];

            });
        }
        else {
            self.circleLayers[self.circleLayers.count - 1].strokeColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1].CGColor;
            self.circleLayers[self.circleLayers.count - 1].fillColor = [UIColor whiteColor].CGColor;
            self.labels[self.circleLayers.count - 1].textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1];
        }
    }];
}



@end
