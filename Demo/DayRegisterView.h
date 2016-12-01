//
//  DayRegisterView.h
//  zhoumowan
//
//  Created by cornier on 2016/11/30.
//  Copyright © 2016年 Yock.L. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DayRegisterViewDelegate <NSObject>

@optional
- (void)showDetail;
- (void)share;
- (void)close;

@end

@interface DayRegisterView : UIView

@property (nonatomic) id<DayRegisterViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *monthLabel;
@property (weak, nonatomic) IBOutlet UILabel *weekLabel;

@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UIView *lineView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lineViewHeight;
@property (weak, nonatomic) IBOutlet UIImageView *cancleImageView;
@property (weak, nonatomic) IBOutlet UIImageView *shareImageView;
@property (weak, nonatomic) IBOutlet UIImageView *showDetailImageView;


@end
