//
//  CircleSmallView.m
//  TurntableDemo
//
//  Created by jie on 2017/11/15.
//  Copyright © 2017年 jie. All rights reserved.
//

#import "CircleSmallView.h"
#import "ZJTimersManger.h"

@interface CircleSmallView()

@end

@implementation CircleSmallView

+(CircleSmallView *)createSmallCircleViewWithType:(NSString*)type{
    
    if ([type isEqualToString:@"1"]) {
        //增加响应
        CircleSmallView *smallView = [[CircleSmallView alloc]initWithFrame:CGRectMake(0, 0,2*5,2*5)];
        [smallView addTarget:smallView action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
        smallView.backgroundColor = [UIColor redColor];
        smallView.layer.masksToBounds = YES;
        smallView.layer.cornerRadius = 5;
        return smallView;
    } else {
        //内容模块
        CircleSmallView *smallView = [[CircleSmallView alloc]initWithFrame:CGRectMake(0, 0,2*CircleOptionSmallRadius,2*CircleOptionSmallRadius)];
        [smallView addTarget:smallView action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
        smallView.layer.masksToBounds = YES;
        smallView.layer.cornerRadius = CircleOptionSmallRadius;
        return smallView;
    }
}

-(void)test{
    DLog(@"旋转中视图响应");
    
}


-(void)configUI:(CircleViewModel *)model{
    [self setTitle:model.labelTip forState:UIControlStateNormal];
    [self setBackgroundColor:[ZJFactoryMethod colorWithHexString:model.baseViewColor]];
    [self setTintColor:[ZJFactoryMethod colorWithHexString:model.fontColor]];

}

@end
