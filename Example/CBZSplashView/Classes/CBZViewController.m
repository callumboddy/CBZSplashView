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

static NSString * const kTwitterIcon = @"twitterIcon";
static NSString * const kSnapchatIcon = @"snapchatIcon";

static NSString * const kTwitterColor = @"4099FF";
static NSString * const kSnapchatColor = @"FFCC00";

@interface CBZViewController ()

@end

@implementation CBZViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
}

- (void)viewDidAppear:(BOOL)animated
{
  UIImage *icon = [UIImage imageNamed:kTwitterIcon];
  UIColor *color = [UIColor colorWithHexString:kTwitterColor];
  CBZSplashView *splashView = [[CBZSplashView alloc] initWithIcon:icon backgroundColor:color];
  [self.view addSubview:splashView];
}


@end
