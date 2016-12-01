//
//  AnimationViewController.m
//  Demo_Collection2
//
//  Created by cornier on 2016/11/29.
//  Copyright © 2016年 cornier. All rights reserved.
//

#import "AnimationViewController.h"
//#import "FadeView.h"
#import "DayRegisterView.h"

#define SCREEN_WIDTH                            [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT                           [UIScreen mainScreen].bounds.size.height

@interface AnimationViewController () <CAAnimationDelegate, DayRegisterViewDelegate>

@property (nonatomic, strong) UIImageView *BackImageView;
@property (nonatomic, strong) UIButton *cancleButton;
@property (nonatomic, strong) UIImageView *rightBackImageView;
//@property (nonatomic, strong) FadeView *fadeView;
@property (nonatomic, strong) DayRegisterView *dayView;
@end

@implementation AnimationViewController
//- (instancetype)init {
//    self = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"AnimationViewController"];
//    return self;
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.fakeImageView.image = self.image;
    
    [self show];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)show {
    self.dayView = [[DayRegisterView alloc] init];
    self.dayView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    self.dayView.alpha = 0.0;
    self.dayView.delegate = self;
    [self.view addSubview:self.dayView];
    
    [UIView beginAnimations:@"show" context:nil];//标记动画块开始
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];//定义动画加速和减速方式
    [UIView setAnimationDuration:1.0];//动画时长
    [UIView setAnimationDelegate:self];
    _dayView.alpha = 1.0;
//    [UIView setAnimationDidStopSelector:@selector(showArrowWillStart:finished:context:)];
//    //动画结束后回调方法
//    [UIView setAnimationDidStopSelector:@selector(showArrowDidStop:finished:context:)];
    [UIView commitAnimations];//标志动滑块结束
}

- (void)close {
    self.BackImageView =[[UIImageView alloc] initWithFrame:self.view.frame];
    self.BackImageView.image = self.dayView.bgImageView.image;
    
    [[UIApplication sharedApplication].keyWindow addSubview:_BackImageView];
    [UIView beginAnimations:@"show" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationDelegate:self];
    // Make the animatable changes.
    _BackImageView.alpha = 0.0;
    _dayView.alpha = 0.0;
    // Commit the changes and perform the animation.
    [UIView commitAnimations];
    
    [self dismissViewControllerAnimated:NO completion:nil];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self show];
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
