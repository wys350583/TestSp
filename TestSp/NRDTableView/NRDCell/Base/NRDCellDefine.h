//
//  NRDCellDefine.h
//  TestSp
//
//  Created by 一鸿温 on 15/12/27.
//  Copyright © 2015年 wyh. All rights reserved.
//

#ifndef NRDCellDefine_h
#define NRDCellDefine_h

//屏幕宽
#define cellWidth                           [UIScreen mainScreen].bounds.size.width

//表单cell属性
#define formCellBackgroundColor             [UIColor colorWithRed:0.97 green:0.97 blue:0.97 alpha:1]
#define formCellLeftOffset                  10
#define formCellRightOffset                 -6

//显示cell属性
#define displayCellLeftOffset               16
#define displayCellRightOffset              -16

//垂直分割线
#define vertLineColor                       [UIColor colorWithRed:0.90 green:0.90 blue:0.90 alpha:1]

//cellLab的属性
#define cellLabRightOffset                  -10
#define cellLabWidth                        70
#define cellLabFontSize                     14
#define cellLabTestColor                    [UIColor colorWithRed:10.0 / 255.0 green:10.0 / 255.0 blue:10.0 / 255.0 alpha:1]

//cellImgV属性
#define cellImgVSize                        20

//控件外边距
#define leftSpace                           10
#define topSpace                            2
#define rightSpace                          -10

//cellDetail属性
#define cellDetailLabFontSize               12
#define cellDetailLabTextColor              [UIColor colorWithRed:100.0 / 255.0 green:100.0 / 255.0 blue:100.0 / 255.0 alpha:1]

#define cellDetailLab0FontSize              14
#define cellDetailLab0TextColor             [UIColor colorWithRed:50.0 / 255.0 green:50.0 / 255.0 blue:50.0 / 255.0 alpha:1]

//cellTxf属性
#define cellTxfFontSize                     14
#define cellTxfTextColor                    [UIColor colorWithRed:10.0 / 255.0 green:10.0 / 255.0 blue:10.0 / 255.0 alpha:1]

//cellSingleBtn属性
#define cellSingleBtnWidth                  (cellWidth - 20) / 3
#define cellSingleBtnImageNormal            @"singleBtnImage_normal"
#define cellSingleBtnImageSelected          @"singleBtnImage_selected"
#define cellSingleBtnTitleFontSize          14
#define cellSingleBtnTitleColorNormal       [UIColor colorWithRed:100.0 / 255.0 green:100.0 / 255.0 blue:100.0 / 255.0 alpha:1]
#define cellSingleBtnTitleColorSelected     [UIColor colorWithRed:10.0 / 255.0 green:10.0 / 255.0 blue:10.0 / 255.0 alpha:1]



#endif /* NRDCellDefine_h */
