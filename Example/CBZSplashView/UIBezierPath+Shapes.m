//
//  UIBezierPath+Shapes.m
//  CBZSplashView
//
//  Created by Mazyad Alabduljaleel on 8/8/14.
//  Copyright (c) 2014 Callum Boddy. All rights reserved.
//

#import "UIBezierPath+Shapes.h"

@implementation UIBezierPath (Shapes)

+ (instancetype)twitterShape
{
    UIBezierPath* nPath = [UIBezierPath bezierPath];
    [nPath moveToPoint: CGPointMake(22.05, 56.63)];
    [nPath addCurveToPoint: CGPointMake(34.23, 54.93) controlPoint1: CGPointMake(26.32, 56.63) controlPoint2: CGPointMake(30.38, 56.06)];
    [nPath addCurveToPoint: CGPointMake(44.42, 50.27) controlPoint1: CGPointMake(38.08, 53.8) controlPoint2: CGPointMake(41.48, 52.25)];
    [nPath addCurveToPoint: CGPointMake(52.37, 43.37) controlPoint1: CGPointMake(47.36, 48.29) controlPoint2: CGPointMake(50.01, 45.99)];
    [nPath addCurveToPoint: CGPointMake(58.2, 34.89) controlPoint1: CGPointMake(54.74, 40.75) controlPoint2: CGPointMake(56.68, 37.92)];
    [nPath addCurveToPoint: CGPointMake(61.69, 25.53) controlPoint1: CGPointMake(59.72, 31.86) controlPoint2: CGPointMake(60.89, 28.74)];
    [nPath addCurveToPoint: CGPointMake(62.9, 15.97) controlPoint1: CGPointMake(62.5, 22.32) controlPoint2: CGPointMake(62.9, 19.14)];
    [nPath addLineToPoint: CGPointMake(62.9, 14.11)];
    [nPath addCurveToPoint: CGPointMake(70.03, 6.68) controlPoint1: CGPointMake(65.7, 12.07) controlPoint2: CGPointMake(68.07, 9.6)];
    [nPath addCurveToPoint: CGPointMake(61.78, 8.95) controlPoint1: CGPointMake(67.37, 7.86) controlPoint2: CGPointMake(64.62, 8.61)];
    [nPath addCurveToPoint: CGPointMake(68.08, 1.05) controlPoint1: CGPointMake(64.87, 7.12) controlPoint2: CGPointMake(66.97, 4.49)];
    [nPath addCurveToPoint: CGPointMake(59.02, 4.51) controlPoint1: CGPointMake(65.17, 2.72) controlPoint2: CGPointMake(62.15, 3.88)];
    [nPath addCurveToPoint: CGPointMake(48.49, 0) controlPoint1: CGPointMake(56.07, 1.5) controlPoint2: CGPointMake(52.56, 0)];
    [nPath addCurveToPoint: CGPointMake(38.34, 4.17) controlPoint1: CGPointMake(44.51, 0) controlPoint2: CGPointMake(41.13, 1.39)];
    [nPath addCurveToPoint: CGPointMake(34.14, 14.28) controlPoint1: CGPointMake(35.54, 6.95) controlPoint2: CGPointMake(34.14, 10.32)];
    [nPath addCurveToPoint: CGPointMake(34.45, 17.57) controlPoint1: CGPointMake(34.14, 15.56) controlPoint2: CGPointMake(34.25, 16.66)];
    [nPath addCurveToPoint: CGPointMake(17.92, 13.26) controlPoint1: CGPointMake(28.54, 17.25) controlPoint2: CGPointMake(23.04, 15.81)];
    [nPath addCurveToPoint: CGPointMake(4.87, 2.92) controlPoint1: CGPointMake(12.81, 10.7) controlPoint2: CGPointMake(8.46, 7.26)];
    [nPath addCurveToPoint: CGPointMake(2.93, 9.83) controlPoint1: CGPointMake(3.58, 5.15) controlPoint2: CGPointMake(2.93, 7.46)];
    [nPath addCurveToPoint: CGPointMake(4.65, 16.6) controlPoint1: CGPointMake(2.93, 12.25) controlPoint2: CGPointMake(3.5, 14.51)];
    [nPath addCurveToPoint: CGPointMake(9.34, 21.7) controlPoint1: CGPointMake(5.8, 18.69) controlPoint2: CGPointMake(7.36, 20.39)];
    [nPath addCurveToPoint: CGPointMake(2.86, 19.9) controlPoint1: CGPointMake(7.04, 21.61) controlPoint2: CGPointMake(4.88, 21.01)];
    [nPath addLineToPoint: CGPointMake(2.86, 20.07)];
    [nPath addCurveToPoint: CGPointMake(6.13, 29.2) controlPoint1: CGPointMake(2.86, 23.53) controlPoint2: CGPointMake(3.95, 26.57)];
    [nPath addCurveToPoint: CGPointMake(14.35, 34.11) controlPoint1: CGPointMake(8.31, 31.82) controlPoint2: CGPointMake(11.05, 33.46)];
    [nPath addCurveToPoint: CGPointMake(10.56, 34.59) controlPoint1: CGPointMake(13.12, 34.43) controlPoint2: CGPointMake(11.86, 34.59)];
    [nPath addCurveToPoint: CGPointMake(7.87, 34.35) controlPoint1: CGPointMake(9.59, 34.59) controlPoint2: CGPointMake(8.69, 34.51)];
    [nPath addCurveToPoint: CGPointMake(12.93, 41.44) controlPoint1: CGPointMake(8.78, 37.22) controlPoint2: CGPointMake(10.47, 39.58)];
    [nPath addCurveToPoint: CGPointMake(21.26, 44.29) controlPoint1: CGPointMake(15.4, 43.29) controlPoint2: CGPointMake(18.17, 44.24)];
    [nPath addCurveToPoint: CGPointMake(3.41, 51.03) controlPoint1: CGPointMake(15.58, 48.78) controlPoint2: CGPointMake(9.63, 51.03)];
    [nPath addCurveToPoint: CGPointMake(0, 50.8) controlPoint1: CGPointMake(2.23, 51.03) controlPoint2: CGPointMake(1.09, 50.95)];
    [nPath addCurveToPoint: CGPointMake(22.05, 56.63) controlPoint1: CGPointMake(6.11, 54.68) controlPoint2: CGPointMake(13.46, 56.63)];
    [nPath addLineToPoint: CGPointMake(22.05, 56.63)];
    [nPath closePath];
    
    return nPath;
}

@end
