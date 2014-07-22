//
//  CBZSplashView.m
//  MicroMessage
//
//  Created by Callum Boddy on 22/07/2014.
//  Copyright (c) 2014 Callum Boddy. All rights reserved.
//

#import "CBZSplashView.h"
#import "UIColor+HexString.h"

@interface CBZSplashView ()
@property (nonatomic, strong) UIImage *iconImage;
@property (strong, nonatomic) UIImageView *imgOriginal;
@property (strong, nonatomic) UIImageView *imgColorFill;
@end


@implementation CBZSplashView

- (instancetype)initWithIcon:(UIImage *)icon backgroundColor:(UIColor *)backgroundColor
{
  self = [super init];
  if (self) {
    _iconImage = icon;
    [self setupViewWithBackgroundColor:backgroundColor];
  }
  return self;
}

- (void)setupViewWithBackgroundColor:(UIColor *)backgroundColor
{
  self.frame = [UIApplication sharedApplication].keyWindow.frame;
  self.backgroundColor = backgroundColor;

  UIImage *img = self.iconImage;
  
  self.imgOriginal = [[UIImageView alloc] init];
  self.imgColorFill = [[UIImageView alloc] init];
  self.imgOriginal.image = img;
  
  self.imgColorFill.image = [img imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
  self.imgColorFill.tintColor = [UIColor whiteColor];
  
  self.imgColorFill.frame = CGRectMake(0, 0, 60, 60);
  self.imgColorFill.contentMode = UIViewContentModeScaleAspectFit;
  self.imgColorFill.center = self.center;
  [self addSubview:self.imgColorFill];
}

- (void)didMoveToSuperview
{
  [UIView animateWithDuration:0.6 delay:1 usingSpringWithDamping:0.7 initialSpringVelocity:10 options:UIViewAnimationOptionCurveEaseInOut animations:^{
    CGAffineTransform scaleTransform = CGAffineTransformMakeScale(0.75, 0.75);
    self.imgColorFill.transform = scaleTransform;
  } completion:^(BOOL finished) {
    [UIView animateWithDuration:0.5 animations:^{
      CGAffineTransform scaleTransform = CGAffineTransformMakeScale(30, 30);
      self.imgColorFill.transform = scaleTransform;
      self.alpha = 0.0;
    } completion:^(BOOL finished) {
      [self removeFromSuperview];
    }];
  }];
}


#pragma mark - property getters

- (CGSize)iconStartSize
{
  if (!_iconStartSize.height) {
    _iconStartSize = CGSizeMake(100, 100);
  }
  return _iconStartSize;
}


@end
