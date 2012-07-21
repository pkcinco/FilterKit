//
//  ViewController.m
//  FilterDemoApp
//
//  Created by Matt Jarjoura on 7/21/12.
//  Copyright (c) 2012 iOS Dev Camp 2012. All rights reserved.
//

#import "ViewController.h"
#import "FKImagePickerController.m"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(10, 200, 300, 80);
    [button setTitle:NSLocalizedString(@"Show Picker", @"") forState:UIControlStateNormal];
    [button addTarget:self action:@selector(showPicker:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)showPicker:(id)sender
{
    FKImagePickerController *imagePickerController = [[FKImagePickerController alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:imagePickerController animated:YES];
}

@end
