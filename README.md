# CBZSplashView

[![CI Status](http://img.shields.io/travis/Callum Boddy/CBZSplashView.svg?style=flat)](https://travis-ci.org/Callum Boddy/CBZSplashView)
[![Version](https://img.shields.io/cocoapods/v/CBZSplashView.svg?style=flat)](http://cocoadocs.org/docsets/CBZSplashView)
[![License](https://img.shields.io/cocoapods/l/CBZSplashView.svg?style=flat)](http://cocoadocs.org/docsets/CBZSplashView)
[![Platform](https://img.shields.io/cocoapods/p/CBZSplashView.svg?style=flat)](http://cocoadocs.org/docsets/CBZSplashView)


## CBZSplashView

Inspired by the Twitter Splash screen.

Twitter: <a href="https://twitter.com/callumboddy">@callumboddy</a>

<img src="Images/twitterGif.gif"/>

```objective-c
  UIImage *icon = [UIImage imageNamed:kMyIcon];
  UIColor *color = [UIColor colorWithHexString:kMyColor];
  CBZSplashView *splashView = [[CBZSplashView alloc] initWithIcon:icon backgroundColor:color];
  [self.view addSubview:splashView];
```

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

CBZSplashView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "CBZSplashView"

## Author

Callum Boddy, callum.boddy@gmail.com

## License

CBZSplashView is available under the MIT license. See the LICENSE file for more info.

