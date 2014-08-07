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
  CGContextTranslateCTM(context,
                        CGRectGetMidX(self.bezierPath.bounds),
                        CGRectGetMidY(self.bezierPath.bounds));
  
  CGContextScaleCTM(context, self.animationScale, self.animationScale);
  CGContextTranslateCTM(context,
                        -CGRectGetMidX(self.bezierPath.bounds),
                        -CGRectGetMidY(self.bezierPath.bounds));
  
  CGContextAddRect(context, self.bounds);
  CGContextAddPath(context, self.bezierPath.CGPath);
  
  [self.backgroundViewColor setFill];
  CGContextEOFillPath(context);
}

- (void)startAnimationWithCompletionHandler:(void (^)())completionHandler
{
  CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
  [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
  
  self.displayLink = displayLink;
}

@end
