//
//  CircleViewModel.h
//  TurntableDemo
//
//  Created by jie on 2017/11/15.
//  Copyright © 2017年 jie. All rights reserved.
//

#import "ZJBaseModel.h"

@interface CircleViewModel : ZJBaseModel

@property (nonatomic,strong)NSString *labelTip;

@property (nonatomic,strong)NSString *contentDes;

@property (nonatomic,strong)NSString *baseViewColor;

@property (nonatomic,strong)NSString *fontColor;

@property (nonatomic,strong)NSString *type;// 1 :增加响应   0：代表数据

@end
