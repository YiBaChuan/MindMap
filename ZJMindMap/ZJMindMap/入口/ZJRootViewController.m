//
//  ZJRootViewController.m
//  ZJMindMap
//
//  Created by jie on 2017/11/18.
//  Copyright © 2017年 jie. All rights reserved.
//

#import "ZJRootViewController.h"
#import "CircleViewModel.h"
#import "CircleViewManger.h"
#import "CircleLayoutPathView.h"

@interface ZJRootViewController ()

@property (nonatomic,strong)NSMutableArray *dataArray;

@end

@implementation ZJRootViewController

-(void)createData{
    self.dataArray = [NSMutableArray array];
    for (int i = 0; i<6; i++) {
        CircleViewModel *model = [[CircleViewModel alloc]init];
        model.labelTip = @"标签";
        model.contentDes = @"这个是内容描述";
        model.baseViewColor = @"#FF0000";
        model.fontColor = @"#000000";
        model.type = @"0";
        [self.dataArray addObject:model];
    }
}


-(void)dealAddActionModel{
    for (int i=0; i<self.dataArray.count; i++) {
        if ( i%2 == 0 ) {
            CircleViewModel *model = [[CircleViewModel alloc]init];
            model.type = @"1";
            [self.dataArray insertObject:model atIndex:i];
        }
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self createData];
    [self dealAddActionModel];
    CircleViewManger *viewManger = [CircleViewManger mangerWithData:self.dataArray];
    [viewManger setUILayoutWithType:UICircleLayout];
    CircleLayoutPathView *pathView = [CircleLayoutPathView createLayoutPathWithData:viewManger];
    [self.view addSubview:pathView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
