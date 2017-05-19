//
//  ViewController.m
//  TestInputNumber
//
//  Created by 龙培 on 17/5/16.
//  Copyright © 2017年 龙培. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"

@interface ViewController ()
{
    CustomTextField *view;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //固定4个进行分隔
    view = [[CustomTextField alloc]initWithFrame:CGRectMake(20, 100, 300, 150) withPlaceHolder:@"请输入银行卡号" withSeparateCount:4];
    
    //按照数组中的进行分隔，假如分隔电话号码@[@"3",@"4",@"4"]即可
    //view = [[CustomTextField alloc]initWithFrame:CGRectMake(20, 100, 300, 50) withPlaceHolder:@"请输入电话号码" withSeparateArray:@[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"]];
    view.limitCount = 19;
    view.layer.cornerRadius = 4.0;
    view.layer.borderColor = [UIColor lightGrayColor].CGColor;
    view.layer.borderWidth = 2.0;
    [self.view addSubview:view];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"用户实际输入内容:%@",view.userInputContent);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
