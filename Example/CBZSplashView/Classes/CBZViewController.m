//
//  CBZViewController.m
//  CBZSplashView
//
//  Created by Callum Boddy on 07/22/2014.
//  Copyright (c) 2014 Callum Boddy. All rights reserved.
//

#import "CBZViewController.h"
#import "CBZSplashView.h"

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
  CBZSplashView *splashView = [[CBZSplashView alloc] initWithImageNamed:kTwitterIcon backgroundColorHexString:kTwitterColor];
  [self.view addSubview:splashView];
}


@end
