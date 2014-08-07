//
//  CBZVectorSplashView.m
//  Telly
//
//  Created by Mazyad Alabduljaleel on 8/7/14.
//  Copyright (c) 2014 Telly, Inc. All rights reserved.
//

#import "CBZVectorSplashView.h"

@interface CBZVectorSplashView ()

@property (nonatomic, strong) UIBezierPath *bezierPath;
@property (nonatomic, strong) UIColor *backgroundViewColor;

/* weak in order to break the potential retain cycle */
@property (nonatomic, weak) CADisplayLink *displayLink;
@property (nonatomic) CGFloat animationScale;

@end

@implementation CBZVectorSplashView

- (instancetype)initWithBezierPath:(UIBezierPath *)bezier backgroundColor:(UIColor *)backgroundColor
{
  self = [super initWithFrame:[[UIScreen mainScreen] bounds]];
  if (self) {
    _bezierPath = bezier;
    _backgroundViewColor = backgroundColor;
    _animationScale = 1.f;
    
    self.backgroundColor = [UIColor clearColor];
  }
  return self;
}

- (void)tick:(CADisplayLink *)displayLink
{
  self.animationScale += displayLink.duration;
  [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{    
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  /* apply the scale around the center of the view */
  CGContextTranslateCTM(context,
                        CGRectGetWidth(self.bounds) / 2,
                        CGRectGetHeight(self.bounds) / 2);
  
  CGContextScaleCTM(context, self.animationScale, self.animationScale);
  CGContextTranslateCTM(context,
                        -CGRectGetWidth(self.bounds) / 2,
                        -CGRectGetHeight(self.bounds) / 2);
  
  /* Add the fill color */
  CGContextAddRect(context, self.bounds);
  
  /* Move the context to the middle before adding the shape */
  CGContextTranslateCTM(context,
                        (CGRectGetWidth(self.bounds) - CGRectGetWidth(self.bezierPath.bounds)) / 2,
                        (CGRectGetHeight(self.bounds) - CGRectGetHeight(self.bezierPath.bounds)) / 2);
  
  /* Now carve the shape out */
  CGContextAddPath(context, self.bezierPath.CGPath);
  
  /* Commit an Evens-Odd drawing */
  [self.backgroundViewColor setFill];
  CGContextEOFillPath(context);
}

- (void)startAnimationWithCompletionHandler:(void (^)())completionHandler
{
  CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
  [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
  
  self.displayLink = displayLink;
}

@end
