//
//  ViewController.m
//  TestInputNumber
//
//  Created by 龙培 on 17/5/16.
//  Copyright © 2017年 龙培. All rights reserved.
//  控件思路：http://www.jianshu.com/p/582cee0680b0
//  控件下载及问题反馈至：https://github.com/Coolll/SeparateTextField

#import "ViewController.h"
#import "CustomTextField.h"

@interface ViewController ()
{
    CustomTextField *viewOne;
    CustomTextField *viewTwo;
    CustomTextField *viewThree;
    __weak IBOutlet CustomTextField *dddTextField;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadTextFieldWithFrame];
    
}

- (void)loadTextFieldWithFrame
{
    
    //固定4个进行分隔
    viewOne = [[CustomTextField alloc]initWithFrame:CGRectMake(20, 200, 300, 50) withPlaceHolder:@"请输入银行卡号" withSeparateCount:4];
    viewOne.limitCount = 19;//可以不设置，但是那样的话，就可以无限输入了
    viewOne.layer.cornerRadius = 4.0;
    viewOne.layer.borderColor = [UIColor lightGrayColor].CGColor;
    viewOne.layer.borderWidth = 2.0;
    [self.view addSubview:viewOne];


    //按照数组中的进行分隔，假如分隔电话号码@[@"3",@"4",@"4"]即可
    viewTwo = [[CustomTextField alloc]initWithFrame:CGRectMake(20, 300, 300, 50) withPlaceHolder:@"请输入电话号码" withSeparateArray:@[@"3",@"4",@"4"]];
    viewTwo.limitCount = 11;//可以不设置，但是那样的话，就可以无限输入了
    viewTwo.layer.cornerRadius = 4.0;
    viewTwo.layer.borderColor = [UIColor lightGrayColor].CGColor;
    viewTwo.layer.borderWidth = 2.0;
    [self.view addSubview:viewTwo];


    //输入身份证号
    viewThree = [[CustomTextField alloc]initWithFrame:CGRectMake(20, 400, 300, 50) withPlaceHolder:@"请输入身份证号" withSeparateArray:@[@"6",@"8",@"4"]];
    viewThree.limitCount = 18;//可以不设置，但是那样的话，就可以无限输入了
    viewThree.layer.cornerRadius = 4.0;
    viewThree.layer.borderColor = [UIColor lightGrayColor].CGColor;
    viewThree.layer.borderWidth = 2.0;
    [self.view addSubview:viewThree];

}
#pragma mark - 使用xib文件需实现该方法

- (void)viewDidLayoutSubviews
{
    //使用Xib加载时，配置等个数分隔
    [dddTextField configureTextFieldWithPlaceHolder:@"输入密码" withSeparateCount:4];
    
    //使用Xib加载时，按照数组分隔
    //[dddTextField configureTextFieldWithPlaceHolder:@"使用Xib，请输入订单号" withSeparateArray:@[@"3",@"4",@"5",@"6"]];

}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"实际输入银行卡内容:%@",viewOne.userInputContent);

    NSLog(@"实际输入电话内容:%@",viewTwo.userInputContent);

    NSLog(@"实际输入身份证号内容:%@",viewThree.userInputContent);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
