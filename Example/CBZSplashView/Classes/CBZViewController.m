//
//  CBZViewController.m
//  CBZSplashView
//
//  Created by Callum Boddy on 07/22/2014.
//  Copyright (c) 2014 Callum Boddy. All rights reserved.
//

#import "CBZViewController.h"
#import "CBZSplashView.h"
#import "UIColor+HexString.h"
#import "UIBezierPath+Shapes.h"

static NSString * const kTwitterIcon = @"twitterIcon";
static NSString * const kSnapchatIcon = @"snapchatIcon";

static NSString * const kTwitterColor = @"4099FF";
static NSString * const kSnapchatColor = @"FFCC00";

@interface CBZViewController ()

@property (nonatomic, strong) CBZSplashView *splashView;

@end

@implementation CBZViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  __unused UIImage *icon = [UIImage imageNamed:@"twitterIcon"];
  UIBezierPath *bezier = [UIBezierPath twitterShape];
  UIColor *color = [UIColor colorWithHexString:kTwitterColor];
  
  CBZSplashView *splashView = [CBZSplashView splashViewWithBezierPath:bezier
                                                      backgroundColor:color];
  
  splashView.animationDuration = 1.4;
  
  [self.view addSubview:splashView];
  
  self.splashView = splashView;
}

- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
  
  /* wait a beat before animating in */
  dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
      [self.splashView startAnimation];
  });
}

- (BOOL)prefersStatusBarHidden
{
  return YES;
}


@end
