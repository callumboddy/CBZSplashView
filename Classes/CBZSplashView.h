//
//  CBZSplashView.h
//  MicroMessage
//
//  Created by Callum Boddy on 22/07/2014.
//  Copyright (c) 2014 Callum Boddy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBZSplashView : UIView


/**
 *  This intializes the view, call addSubview on viewDidAppear.
 *
 *  @param icon            The icon image in the centre
 *  @param backgroundColor the background color of the entire view
 *
 *  @return The Splash view
 */
- (instancetype)initWithIcon:(UIImage *)icon backgroundColor:(UIColor *)backgroundColor;


/**
 *  Call to start the animation.
 */
- (void)startAnimation;

/**
 *  Call to start the animation with completion handler.
 */
- (void)startAnimationWithCompletionHandler:(void(^)())completionHandler;

/**
 *  The starting size of the centred icon.
 */
@property (nonatomic, assign) CGSize iconStartSize;

/**
 *  total length of animation.
 */
@property (nonatomic, assign) CGFloat animationDuration;

/**
 *  the color of the icon
 */
@property (nonatomic, strong) UIColor *iconColor;

@end
