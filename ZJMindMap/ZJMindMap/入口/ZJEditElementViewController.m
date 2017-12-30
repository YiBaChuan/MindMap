//
//  ZJEditElementViewController.m
//  ZJMindMap
//
//  Created by jie on 2017/12/5.
//  Copyright © 2017年 jie. All rights reserved.
//

#import "ZJEditElementViewController.h"

@interface ZJEditElementViewController ()

@property (weak, nonatomic) IBOutlet UITextField *labelTextField;
@property (weak, nonatomic) IBOutlet UITextView *desTextView;

@end

@implementation ZJEditElementViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
}
- (IBAction)cancelBtnClick:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)sureBtnClick:(id)sender {
    
    
    
    
    
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
