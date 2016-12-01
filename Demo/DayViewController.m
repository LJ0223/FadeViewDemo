//
//  DayViewController.m
//  Demo
//
//  Created by Mac on 2016/12/1.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "DayViewController.h"
#import "ViewController.h"

@interface DayViewController ()

@end

@implementation DayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor =[ UIColor whiteColor];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width-100, self.view.frame.size.height-100, 50, 50)];
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 25;
    [button setTitle:@"签" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blackColor];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(showArrow) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)showArrow {
    ViewController *viewVC = [[ViewController alloc] init];
    [self presentViewController:viewVC animated:NO completion:nil];
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
