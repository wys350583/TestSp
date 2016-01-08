
//
//  TableViewCell.m
//  Test
//
//  Created by 汪跃山 on 16/1/6.
//  Copyright © 2016年 深圳市小牛资本管理集团. All rights reserved.
//

#import "NRDLoadProductRateCell.h"
#import "NRDLoadProductRateModel.h"


static NSString *cellId = @"TableViewCell";

@interface NRDLoadProductRateCell()

@property (nonatomic, strong)UILabel *lab1;

@property (nonatomic, strong)UILabel *lab2;

@property (nonatomic, strong)UILabel *lab3;

@property (nonatomic, strong)UILabel *lab4;

@end

@implementation NRDLoadProductRateCell

- (instancetype)init
{
    self = [super initWithReuseIdentifier:NSStringFromClass([self class])];
    if (self) {
        
    }
    return self;
}

- (void)setUI {
    [super setUI];
    self.selectionStyle = UITableViewCellSelectionStyleNone;

    
    // 底部背景图
    UIView *bgView = [UIView new];
    bgView.backgroundColor = [UIColor colorWithRed:0.97 green:0.97 blue:0.97 alpha:1];
    [self.contentView addSubview:bgView];
    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView).with.insets(UIEdgeInsetsMake(12, 10, 12, 10));
    }];
    // 上虚线
    [self drawDashLine:bgView start:0 end:0 isHorizontal:YES];
    // 下虚线
    [self drawDashLine:bgView start:0 end:60 isHorizontal:YES];
    // 视图一
    UIView *view1 = [UIView new];
    view1.backgroundColor = [UIColor clearColor];
    view1.tag = 1;
    [bgView addSubview:view1];
    // 视图二
    UIView *view2 = [UIView new];
    view2.backgroundColor = [UIColor clearColor];
    view2.tag = 2;
    [bgView addSubview:view2];
    // 视图三
    UIView *view3 = [UIView new];
    view3.backgroundColor = [UIColor clearColor];
    view3.tag = 3;
    [bgView addSubview:view3];
    // 视图四
    UIView *view4 = [UIView new];
    view4.backgroundColor = [UIColor clearColor];
    view4.tag = 4;
    [bgView addSubview:view4];
    
    CGFloat total = [UIScreen mainScreen].bounds.size.width -20;
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.bottom.equalTo(bgView);
        make.right.equalTo(view2.mas_left);
        make.width.equalTo(@(81.0/356*total));
    }];
    
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view1.mas_right);
        make.right.equalTo(view3.mas_left);
        make.top.bottom.equalTo(bgView);
        make.width.equalTo(@(81.0/356*total));
    }];
    
    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(bgView);
        make.width.equalTo(@(107.0/356*total));
    }];
    
    [view4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view3.mas_right);
        make.right.top.bottom.equalTo(bgView);
    }];
    self.lab1 = [self layoutView:view1 drawDashLineStart:81.0/356*total end:32];
    self.lab2 = [self layoutView:view2 drawDashLineStart:81.0/356*total end:32];
    self.lab3 = [self layoutView:view3 drawDashLineStart:107.0/356*total end:32];
    self.lab4 = [self layoutView:view4 drawDashLineStart:0 end:0];
}

/**
 *  布局子视图
 *
 *  @param superView 父视图
 *  @param start     开始（画虚线）
 *  @param end       结束
 */
-(UILabel *)layoutView:(UIView *)superView drawDashLineStart:(CGFloat)start end:
(CGFloat)end
{
    // 第一行
    UILabel *firstLabel = [UILabel new];
    firstLabel.font = [UIFont systemFontOfSize:11.0];
    firstLabel.textAlignment = NSTextAlignmentCenter;
    firstLabel.numberOfLines = 2;
    firstLabel.textColor = [UIColor colorWithRed:0.35 green:0.47 blue:0.65 alpha:1];
    [superView addSubview:firstLabel];
    
    // 第二行
    UILabel *secondLabel = [UILabel new];
    secondLabel.font = [UIFont systemFontOfSize:11.0];
    secondLabel.numberOfLines = 1;
    secondLabel.adjustsFontSizeToFitWidth = YES;
    secondLabel.minimumScaleFactor = 0.7;
    secondLabel.textAlignment = NSTextAlignmentCenter;
    secondLabel.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1];
    [superView addSubview:secondLabel];
    
    [firstLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superView).offset(8);
        make.right.equalTo(superView).offset(-8);
        make.top.equalTo(superView).offset(10);
    }];
    
    [secondLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(superView.mas_bottom).offset(-23);
        make.left.equalTo(superView).offset(8);
        make.right.equalTo(superView).offset(-8);
    }];
    
    switch (superView.tag) {
        case 1:
        {
           firstLabel.text = @"贷款额度";
            [self drawDashLine:superView start:start end:end isHorizontal:NO];
        }
            break;
        case 2:
        {
            firstLabel.text = @"月利率";
            [self drawDashLine:superView start:start end:end isHorizontal:NO];
        }
            break;
        case 3:
        {
            firstLabel.text = @"咨询与管理服务费";
            [self drawDashLine:superView start:start end:end isHorizontal:NO];

        }
            break;
        case 4:
        {
            firstLabel.text = @"贷款期限(月)";
        }
            break;
            
        default:
            break;
    }
    return secondLabel;
}

/**
 *  画虚线
 *
 *  @param bgView       底视图
 *  @param start        开始
 *  @param end          结束
 *  @param isHorizontal 水平、竖直
 */
-(void)drawDashLine:(UIView *)bgView start:(CGFloat)start end:(CGFloat)end isHorizontal:(BOOL)isHorizontal{
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    [shapeLayer setBounds:bgView.bounds];
    [shapeLayer setPosition:bgView.center];
    [shapeLayer setFillColor:[[UIColor clearColor] CGColor]];
    
    // 设置虚线颜色为blackColor
    [shapeLayer setStrokeColor:[[UIColor colorWithRed:0.35 green:0.47 blue:0.65 alpha:1] CGColor]];
    
    // 3.0f设置虚线的宽度
    [shapeLayer setLineWidth:1.0f];
    [shapeLayer setLineJoin:kCALineJoinRound];
    
    // 3=线的宽度 1=每条线的间距
    [shapeLayer setLineDashPattern:
     [NSArray arrayWithObjects:[NSNumber numberWithInt:5],
      [NSNumber numberWithInt:2],nil]];

    // Setup the path
   CGMutablePathRef path = CGPathCreateMutable();
    // 0,10代表初始坐标的x，y
    // 320,10代表初始坐标的x，y
    if (isHorizontal) {
        CGPathMoveToPoint(path, NULL, start, end);
        CGPathAddLineToPoint(path, NULL, [UIScreen mainScreen].bounds.size.width-20,end);
    }else{
        CGPathMoveToPoint(path, NULL, start, 10);
        CGPathAddLineToPoint(path, NULL, start,end+20);

    }
    [shapeLayer setPath:path];
    CGPathRelease(path);
    // 可以把self改成任何你想要的UIView, 下图演示就是放到UITableViewCell中的
    [[bgView layer] addSublayer:shapeLayer];
}

- (void)setDisplayData:(NRDCellModel *)model {
    [super setDisplayData:model];
}

- (void)setReqData:(id)reqModel {
    NRDLoadProductRateModel *rateModel = (NRDLoadProductRateModel *)self.displayModel;
    if (reqModel && rateModel.loadMoneyMinKey && rateModel.loadMoneyMaxKey && rateModel.monRateKey && rateModel.managerRateKey && rateModel.monsKey) {
        if (rateModel.loadMoneyMinKey && rateModel.loadMoneyMaxKey) {
            
            NSString *min = [[[reqModel valueForKey:rateModel.loadMoneyMinKey] toString] tenThousand];
            NSString *max = [[[reqModel valueForKey:rateModel.loadMoneyMaxKey] toString] tenThousand];
            self.lab1.text = [[[min
                                append:@"-"]
                                append:max]
                                append:@"万元"];
        }
        
        if (rateModel.monRateKey) {
            self.lab2.text = [[reqModel valueForKey:rateModel.monRateKey] toString].rate;
        }
        
        if (rateModel.managerRateKey) {
            self.lab3.text = [[reqModel valueForKey:rateModel.managerRateKey] toString].rate;
        }
        
        if (rateModel.monsKey) {
            self.lab4.text = [[reqModel valueForKey:rateModel.monsKey] toString];
        }
    }
}


@end
