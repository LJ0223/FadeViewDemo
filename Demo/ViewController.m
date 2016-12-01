//
//  ViewController.m
//  Demo
//
//  Created by Mac on 2016/12/1.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "ViewController.h"
#import "DayRegisterView.h"
#import "AnimationViewController.h"

@interface ViewController ()<CAAnimationDelegate, DayRegisterViewDelegate>

@property (nonatomic, strong) DayRegisterView *arrow;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
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
    AnimationViewController *viewVC = [[AnimationViewController alloc] init];
    [self presentViewController:viewVC animated:NO completion:nil];
}



//-(void)showArrow{
//    [self.view addSubview:self.arrow];
//    
//    [UIView beginAnimations:@"ShowArrow" context:nil];
//    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
//    [UIView setAnimationDuration:1.0];
//    [UIView setAnimationDelegate:self];
//    // Make the animatable changes.
//    _arrow.alpha = 1.0;
//    // Commit the changes and perform the animation.
//    [UIView commitAnimations];
//
//}
//
//-(void)close {
//    [UIView beginAnimations:@"ShowArrow" context:nil];
//    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
//    [UIView setAnimationDuration:1.0];
//    [UIView setAnimationDelegate:self];
//    // Make the animatable changes.
//    _arrow.alpha = 0.0;
//    // Commit the changes and perform the animation.
//    [UIView commitAnimations];
//}
//
//- (DayRegisterView *)arrow {
//    
//    if (!_arrow) {
//        self.arrow = [[DayRegisterView alloc] init];
//        _arrow.alpha = 0.0;
//        _arrow.delegate = self;
//    }
//    [self.view addSubview:_arrow];
//    return _arrow;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
