//
//  CBZSplashView.m
//  MicroMessage
//
//  Created by Callum Boddy on 22/07/2014.
//  Copyright (c) 2014 Callum Boddy. All rights reserved.
//

#import "CBZSplashView.h"
#import "CBZRasterSplashView.h"
#import "CBZVectorSplashView.h"


@implementation CBZSplashView

#pragma mark - Factory methods

+ (instancetype)splashViewWithIcon:(UIImage *)icon backgroundColor:(UIColor *)backgroundColor
{
  /* This component is useless without an icon */
  NSParameterAssert(icon);
  
  return [[CBZRasterSplashView alloc] initWithIconImage:icon backgroundColor:backgroundColor];
}

+ (instancetype)splashViewWithBezierPath:(UIBezierPath *)bezier backgroundColor:(UIColor *)backgroundColor
{
  return [[CBZVectorSplashView alloc] initWithBezierPath:bezier backgroundColor:backgroundColor];
}

#pragma mark - Init & Dealloc

- (instancetype)init
{
  return [super initWithFrame:[[UIScreen mainScreen] bounds]];
}

#pragma mark - Public methods

- (void)startAnimation
{
  [self startAnimationWithCompletionHandler:nil];
}

- (void)startAnimationWithCompletionHandler:(void(^)())completionHandler;
{
  NSAssert(NO, @"Override me!");
}

#pragma mark - property getters

- (CGSize)iconStartSize
{
  if (!_iconStartSize.height) {
    _iconStartSize = CGSizeMake(60, 60);
  }
  return _iconStartSize;
}

- (CGFloat)animationDuration
{
  if (!_animationDuration) {
    _animationDuration = 1.0f;
  }
  return _animationDuration;
}

- (CAAnimation *)iconAnimation
{
  if (!_iconAnimation) {
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    animation.values = @[@1, @0.9, @300];
    animation.keyTimes = @[@0, @0.4, @1];
    animation.duration = self.animationDuration;
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut],
                                  [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    
    _iconAnimation = animation;
  }
  return _iconAnimation;
}

- (UIColor *)iconColor
{
  if (!_iconColor) {
    _iconColor = [UIColor whiteColor];
  }
  return _iconColor;
}

@end
