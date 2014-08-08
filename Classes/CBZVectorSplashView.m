//
//  CBZVectorSplashView.m
//  Telly
//
//  Created by Mazyad Alabduljaleel on 8/7/14.
//  Copyright (c) 2014 Telly, Inc. All rights reserved.
//

#import "CBZVectorSplashView.h"

CGFloat animationFunction(CGFloat input);

@interface CBZVectorSplashView ()

@property (nonatomic, strong) UIBezierPath *bezierPath;
@property (nonatomic, strong) UIColor *backgroundViewColor;

/* weak in order to break the potential retain cycle */
@property (nonatomic, weak) CADisplayLink *displayLink;
/* animation tracking parameters */
@property (nonatomic) CGFloat animationScale;
@property (nonatomic) CGFloat animationTime;

@end

@implementation CBZVectorSplashView

- (instancetype)initWithBezierPath:(UIBezierPath *)bezier backgroundColor:(UIColor *)backgroundColor
{
  self = [super initWithFrame:[[UIScreen mainScreen] bounds]];
  if (self) {
    /* change default animation duration to 0.6 */
    self.animationDuration = 0.6f;
    
    _bezierPath = bezier;
    _backgroundViewColor = backgroundColor;
    _animationScale = 1.f;
    _animationTime = 0.f;
    
    self.backgroundColor = [UIColor clearColor];
  }
  return self;
}

- (void)tick:(CADisplayLink *)displayLink
{
  self.animationTime += displayLink.duration;
  self.animationScale = animationFunction(self.animationTime / self.animationDuration);
  
  [self setNeedsDisplay];
  
  if (self.animationTime >= self.animationDuration) {
    [displayLink invalidate];
  }
}

- (void)drawRect:(CGRect)rect
{    
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  /* Add the fill color */
  CGContextAddRect(context, self.bounds);
  
  /* apply the scale around the center of the view */
  CGContextTranslateCTM(context,
                        CGRectGetWidth(self.bounds) / 2,
                        CGRectGetHeight(self.bounds) / 2);
  
  CGContextScaleCTM(context, self.animationScale, self.animationScale);
  CGContextTranslateCTM(context,
                        -CGRectGetWidth(self.bounds) / 2,
                        -CGRectGetHeight(self.bounds) / 2);
  
  
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
  self.animationTime = 0.f;
}

@end

CGFloat animationFunction(CGFloat x)
{
  CGFloat result = pow(((x - .16)*4), 4) + 0.84;
  return result;
}
