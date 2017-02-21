//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Dave Augerinos on 2017-02-20.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView // <UIGestureRecognizerDelegate>

@property (assign, nonatomic) CGSize contentSize;
@property (strong, nonatomic) UIPanGestureRecognizer *panGesture;

- (IBAction)panView:(UIPanGestureRecognizer *)sender;

@end
