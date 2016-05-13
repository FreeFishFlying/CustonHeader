//
//  CustomRefreshHeader.m
//  CustomHeader_MJ_Refresh
//
//  Created by app on 16/5/13.
//  Copyright © 2016年 scp. All rights reserved.
//

#import "CustomRefreshHeader.h"
#import "PendulumView.h"

#define RGBA(r,g,b,a)                   [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]

//APP导航栏颜色
#define APP_HEADER_COLOR                RGBA(234, 43, 43, 1.0)

//默认字体
#define DEFAULT_FONT(s)                 [UIFont systemFontOfSize:s]
@interface CustomRefreshHeader()

@property (retain, nonatomic) PendulumView *ballView;
@property (retain, nonatomic) UILabel *lab_tit;

@end


@implementation CustomRefreshHeader

-(PendulumView *)ballView
{
    if (!_ballView)
    {
        _ballView = [[PendulumView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 38)];
    }
    
    return _ballView;
}

-(UILabel *)lab_tit
{
    if (!_lab_tit)
    {
        _lab_tit = [[UILabel alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width -200)/2, 38, 200, 18)];
        _lab_tit.textAlignment = NSTextAlignmentCenter;
        _lab_tit.textColor = APP_HEADER_COLOR;
        _lab_tit.font = DEFAULT_FONT(12);
    }
    return _lab_tit;
}


-(void)addView
{
    [self addSubview:self.ballView];
    [self addSubview:self.lab_tit];
}



#pragma mark ============= 重写父类方法 =============
- (void)prepare{
    [super prepare];
    [self addView];
}

- (void)placeSubviews{
    [super placeSubviews];
    
}

- (void)setPullingPercent:(CGFloat)pullingPercent{
    [super setPullingPercent:pullingPercent];
    
}

- (void)setState:(MJRefreshState)state{
    MJRefreshCheckState
    if (state == MJRefreshStatePulling) {
        self.lab_tit.text = @"松开刷新";
        [self.ballView stopAnimating];
    }else if (state == MJRefreshStateRefreshing){
        self.lab_tit.text = @"正在刷新";
        [self.ballView startAnimating];
    }else if (state == MJRefreshStateIdle){
        self.lab_tit.text = @"下拉刷新";
        [self.ballView stopAnimating];
    }
}


@end
