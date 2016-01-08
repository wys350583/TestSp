//
//  XNVerifyRequest.h
//  NRD
//
//  Created by 汪跃山 on 15/10/15.
//  Copyright © 2015年 深圳市小牛资本管理集团. All rights reserved.
//

#import "XNRequest.h"
// 验证信息参数
@interface XNVerifyRequest : XNRequest

// 用户id
@property (nonatomic,strong) NSString *uid;
// 身份证id
@property (nonatomic,strong) NSString *id_cardnum;
// 真实姓名
@property (nonatomic,strong) NSString *real_name;
// 手机号码
@property (nonatomic,strong) NSString *phone_num;
// 银行id
@property (nonatomic,strong) NSString *bank_id;
// 银行名称
@property (nonatomic,strong) NSString *bank_name;
// 卡号
@property (nonatomic,strong) NSString *card_num;
// 验证码
@property (nonatomic,strong) NSString *yzm;
// 类型
@property (nonatomic,assign) NSInteger type;

@end
