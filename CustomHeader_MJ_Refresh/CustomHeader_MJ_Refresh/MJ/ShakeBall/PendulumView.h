//
//  PendulumView.h
//  PendulumView
//
//  Created by app on 16/2/29.
//  Copyright © 2016年 scp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PendulumView : UIView

- (id)initWithFrame:(CGRect)frame;
- (id)initWithFrame:(CGRect)frame ballColor:(UIColor *)ballColor;

- (void)startAnimating;
- (void)stopAnimating;
- (BOOL)isAnimating;

@end
