//
//  ViewController.m
//  Storyboard_unwindDemo
//
//  Created by Bill on 14-4-8.
//  Copyright (c) 2014年 CNHaiTao. All rights reserved.
//

#import "RedViewController.h"
#import "YellowViewController.h"
#import "BlueViewController.h"

@interface RedViewController ()

@end

@implementation RedViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindSegueToRedViewController:(UIStoryboardSegue *)segue {
    
    UIViewController *sourceViewController = segue.sourceViewController;
    
    if ([sourceViewController isKindOfClass:[YellowViewController class]]) {
        NSLog(@"from yellow vc");
    }
    else if ([sourceViewController isKindOfClass:[BlueViewController class]]) {
        NSLog(@"from blue vc");
    }
}

@end
