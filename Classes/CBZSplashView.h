//
//  CBZSplashView.h
//  MicroMessage
//
//  Created by Callum Boddy on 22/07/2014.
//  Copyright (c) 2014 Callum Boddy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

/**
 *  The abstract class that provides the common interface between all splash view implementations.
 */
@interface CBZSplashView : UIView


/**
 *  This initializer takes a raster image that will be used in the animation.
 *
 *  The animation is first scales the image down a bit, then, simultanuously scales it all the way up and fades the view out.
 *
 *  @param icon            The icon image in the centre
 *  @param backgroundColor the background color of the entire view
 *
 *  @return The Splash view
 */
+ (instancetype)splashViewWithIcon:(UIImage *)icon backgroundColor:(UIColor *)backgroundColor;

+ (instancetype)splashViewWithBezierPath:(UIBezierPath *)bezier backgroundColor:(UIColor *)backgroundColor;


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
 *  The animation applied to the icon
 */
@property (nonatomic, strong) CAAnimation *iconAnimation;

/**
 *  the color of the icon
 */
@property (nonatomic, strong) UIColor *iconColor;

@end
