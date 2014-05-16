//
//  PHMLoginViewController.m
//  PowderhookMobile
//
//  Created by Sean Larkin on 5/15/14.
//  Copyright (c) 2014 SeanLarkin. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "PHMLoginViewController.h"


@interface PHMLoginViewController ()

@end

@implementation PHMLoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    [self setupButtonStyling];
}

- (void)setupButtonStyling
{

    UIColor *facebookColor          = [UIColor colorWithRed:59.0f/255.0f green:89.0f/255.0f blue:152.0f/255.0f  alpha:0.8f];
    UIColor *twitterColor           = [UIColor colorWithRed:85.0f/255.0f green:172.0f/255.0f blue:238.0f/255.0f alpha:0.8f];
    UIColor *googlePlusColor        = [UIColor colorWithRed:221.0f/255.0f green:75.0f/255.0f blue:57.0f/255.0f  alpha:0.8f];
    UIColor *powderHookOrangeColor  = [UIColor colorWithRed:214.0f/255.0f green:145.0f/255.0f blue:82.0f/255.0f alpha:0.8f];
    float cornerRadius = 5;

    _loginButton.layer.cornerRadius = cornerRadius;
    _loginButton.layer.backgroundColor = [powderHookOrangeColor CGColor];

    _signUpButton.layer.cornerRadius = cornerRadius;
    _signUpButton.layer.backgroundColor = [powderHookOrangeColor CGColor];

    _facebookButton.layer.cornerRadius = cornerRadius;
    _facebookButton.layer.backgroundColor = [facebookColor CGColor];

    _twitterButton.layer.cornerRadius = cornerRadius;
    _twitterButton.layer.backgroundColor = [twitterColor CGColor];

    _googlePlusButton.layer.cornerRadius = cornerRadius;
    _googlePlusButton.layer.backgroundColor = [googlePlusColor CGColor];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
