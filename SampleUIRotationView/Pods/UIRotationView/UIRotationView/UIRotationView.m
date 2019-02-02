//
//  UIRotationView.m
//  CinCer
//
//  Created by Kid Young on 1/25/16.
//  Copyright © 2016 Yang XiHong. All rights reserved.
//

#import "UIRotationView.h"

@implementation UIRotationView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.duration = 4;
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(backToForeground) name:UIApplicationWillEnterForegroundNotification object:nil];
}

- (void)drawRect:(CGRect)rect
{
    [self addRotateAnimation];
}

- (void)removeFromSuperview
{
    [super removeFromSuperview];
    [NSNotificationCenter.defaultCenter removeObserver:self];
}

- (void)dealloc
{
    NSLog(@"%@ %@", NSStringFromClass(self.class), NSStringFromSelector(_cmd));
}

#pragma mark - Private Methods

- (void)addRotateAnimation
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    animation.repeatCount = INFINITY;
    animation.removedOnCompletion = NO;
    animation.fromValue = @(0.0f);
    animation.toValue = @(2 * M_PI * (self.clockwise * 2 - 1.0));
    animation.duration = self.duration;
    [self.layer addAnimation:animation forKey:@"rotation"];
}

- (void)backToForeground
{
    [self setNeedsDisplay];
}

@end
