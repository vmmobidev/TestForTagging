//
//  ViewController.m
//  LyncExample
//
//  Created by Varghese Simon on 8/6/14.
//  Copyright (c) 2014 Vmoksha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}
- (IBAction)but:(id)sender
{
    UIApplication *application = [UIApplication sharedApplication];
    
    NSString *scheme = @"lync";
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@://", scheme]];
    if ([application canOpenURL:url])
    {
        NSLog(@"Found lync");
        [application openURL:url];
    }else
    {
        NSLog(@"Not found");
    }
    
    NSLog(@"sdjfhsd");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
