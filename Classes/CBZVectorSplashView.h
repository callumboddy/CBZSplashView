//
//  CBZVectorSplashView.h
//  Telly
//
//  Created by Mazyad Alabduljaleel on 8/7/14.
//  Copyright (c) 2014 Telly, Inc. All rights reserved.
//

#import "CBZSplashView.h"

/**
 *  VectorSplash uses a UIBezierPath to carve a mask in the middle that expands while revealing the content behind it.
 */
@interface CBZVectorSplashView : CBZSplashView

- (instancetype)initWithBezierPath:(UIBezierPath *)bezier backgroundColor:(UIColor *)backgroundColor;

@end
