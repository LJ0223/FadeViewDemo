//
//  DayRegisterView.m
//  zhoumowan
//
//  Created by cornier on 2016/11/30.
//  Copyright © 2016年 Yock.L. All rights reserved.
//

#import "DayRegisterView.h"

@implementation DayRegisterView

- (instancetype)init
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"DayRegisterView" owner:nil options:nil] lastObject];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.bgImageView.image = [UIImage imageNamed:@"37AD9452ADBE6F6EBBA58C55ABC38FEF.jpg"];
        self.cancleImageView.userInteractionEnabled = YES;
        self.cancleImageView.image = [UIImage imageNamed:@"day_close"];
        [self.cancleImageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeAction)]];
        self.shareImageView.userInteractionEnabled = YES;
        self.shareImageView.image = [UIImage imageNamed:@"day_share"];
        [self.shareImageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(shareAction)]];
        self.showDetailImageView.userInteractionEnabled = YES;
        self.showDetailImageView.image = [UIImage imageNamed:@"day_more"];
        [self.showDetailImageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showDetailAction)]];
        [self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeAction)]];
    }
    return self;
}

- (void)showDetailAction {
    if (_delegate && [_delegate respondsToSelector:@selector(showDetail)]) {
        [_delegate showDetail];
    }
}
- (void)shareAction {
    if (_delegate && [_delegate respondsToSelector:@selector(share)]) {
        [_delegate share];
    }
}
- (void)closeAction {
    if (_delegate && [_delegate respondsToSelector:@selector(close)]) {
        [_delegate close];
    }
}

@end
