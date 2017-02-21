//
//  ViewController.m
//  MyScrollView
//
//  Created by Dave Augerinos on 2017-02-20.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property (strong, nonatomic) MyScrollView *myView;

@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];

    self.myView = [[MyScrollView alloc] initWithFrame:self.view.bounds];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:self.myView];
    [self.myView addSubview:redView];
    [self.myView addSubview:greenView];
    [self.myView addSubview:blueView];
    [self.myView addSubview:yellowView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)viewDidAppear:(BOOL)animated {
//    
////    self.myView.bounds = CGRectMake(self.myView.bounds.origin.x, self.myView.bounds.origin.y + 100, self.myView.bounds.size.width, self.myView.bounds.size.height);
//}


@end
