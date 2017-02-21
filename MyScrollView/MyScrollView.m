//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Dave Augerinos on 2017-02-20.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()

@property CGPoint startLocation;

@end


@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.contentSize = CGSizeMake(1000, 1000);
        self.panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panView:)];
        [self addGestureRecognizer:self.panGesture];
    }
    return self;
}

- (void)panView:(UIPanGestureRecognizer *)sender {
    
    // Get translation and current bounds
    CGPoint translation = [self.panGesture translationInView:self];
    CGRect myBounds = self.bounds;
    
    // Calculate the new origin x based on translation and calculate bound limits based on max
    CGFloat newBoundsOriginX = myBounds.origin.x - translation.x;
    CGFloat minBoundsOriginX = 0.0;
    CGFloat maxBoundsOriginX = self.contentSize.width - myBounds.size.width;
    myBounds.origin.x = fmax(minBoundsOriginX, fmin(newBoundsOriginX, maxBoundsOriginX));
    
    // Calculate the new origin y based on translation and calculate bound limits based on max
    CGFloat newBoundsOriginY = myBounds.origin.y - translation.y;
    CGFloat minBoundsOriginY = 0.0;
    CGFloat maxBoundsOriginY = self.contentSize.height - myBounds.size.height;
    myBounds.origin.y = fmax(minBoundsOriginY, fmin(newBoundsOriginY, maxBoundsOriginY));
    
    // Apply myBounds to bounds and reset translation of pan gesture to zero
    self.bounds = myBounds;
    [self.panGesture setTranslation:CGPointZero inView:self];
}



@end
