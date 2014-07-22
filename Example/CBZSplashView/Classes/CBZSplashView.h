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
 *  The starting size of the centred icon.
 */
@property (nonatomic, assign) CGSize iconStartSize;

/**
 *  This intializes the view, call addSubview on viewDidAppear.
 *
 *  @param icon            The icon image in the centre
 *  @param backgroundColor the background color of the entire view
 *  @param iconColor       the orgional mask color of the icon
 *
 *  @return The Splash view
 */
- (instancetype)initWithIcon:(UIImage *)icon backgroundColor:(UIColor *)backgroundColor;

@end
