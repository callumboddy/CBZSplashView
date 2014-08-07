//
//  CBZSplashView.m
//  MicroMessage
//
//  Created by Callum Boddy on 22/07/2014.
//  Copyright (c) 2014 Callum Boddy. All rights reserved.
//

#import "CBZSplashView.h"

@interface CBZSplashView ()
@property (nonatomic, strong) UIColor *backgroundViewColor;
@property (nonatomic, strong) UIImage *iconImage;
@property (strong, nonatomic) UIImageView *iconImageView;
@end


@implementation CBZSplashView

- (instancetype)initWithIcon:(UIImage *)icon backgroundColor:(UIColor *)backgroundColor
{
  self = [super init];
  if (self) {
    _iconImage = icon;
    _backgroundViewColor = backgroundColor;
  }
  return self;
}

- (void)willMoveToSuperview:(UIView *)newSuperview
{
  if (!newSuperview) {
    return;
  }
  [self setupViewWithBackgroundColor:self.backgroundViewColor];
}

- (void)setupViewWithBackgroundColor:(UIColor *)backgroundColor
{
  if (!backgroundColor) {
    return;
  }
  
  self.frame = [[UIScreen mainScreen] bounds];
  self.backgroundColor = self.backgroundViewColor;

  self.iconImageView = [UIImageView new];
  self.iconImageView.image = [self.iconImage imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
  self.iconImageView.tintColor = self.iconColor;
  self.iconImageView.frame = CGRectMake(0, 0, self.iconStartSize.width, self.iconStartSize.height);
  self.iconImageView.contentMode = UIViewContentModeScaleAspectFit;
  self.iconImageView.center = self.center;
  
  [self addSubview:self.iconImageView];
}

- (void)startAnimation
{
  __block __weak typeof(self) weakSelf = self;
  
  if (!self.animationDuration) {
    return;
  }
  
  CGFloat shrinkDuration = self.animationDuration * 0.3;
  CGFloat growDuration = self.animationDuration * 0.7;
  
  [UIView animateWithDuration:shrinkDuration delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:10 options:UIViewAnimationOptionCurveEaseInOut animations:^{
    CGAffineTransform scaleTransform = CGAffineTransformMakeScale(0.75, 0.75);
    weakSelf.iconImageView.transform = scaleTransform;
  } completion:^(BOOL finished) {
    [UIView animateWithDuration:growDuration animations:^{
      CGAffineTransform scaleTransform = CGAffineTransformMakeScale(30, 30);
      weakSelf.iconImageView.transform = scaleTransform;
      weakSelf.alpha = 0;
    } completion:^(BOOL finished) {
      [weakSelf removeFromSuperview];
    }];
  }];
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
    _animationDuration = 1.2f;
  }
  return _animationDuration;
}

- (UIColor *)iconColor
{
  if (!_iconColor) {
    _iconColor = [UIColor whiteColor];
  }
  return _iconColor;
}



@end
