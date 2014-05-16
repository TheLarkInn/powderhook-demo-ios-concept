//
//  PHMThirdViewController.m
//  PowderhookMobile
//
//  Created by Sean Larkin on 5/15/14.
//  Copyright (c) 2014 SeanLarkin. All rights reserved.
//

#import "PHMThirdViewController.h"

@interface PHMThirdViewController ()

@end

@implementation PHMThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mapView = [[MKMapView alloc] init];
    self.mapView.showsUserLocation = YES;
    self.mapView.delegate = self;
    self.mapView.hidden = YES;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)zoomToCurrentLocation:(id)sender
{
    float spanX = 0.00725;
    float spanY = 0.00725;
    MKCoordinateRegion region;
    region.center.latitude = self.mapView.userLocation.coordinate.latitude;
    region.center.longitude = self.mapView.userLocation.coordinate.longitude;
    region.span = MKCoordinateSpanMake(spanX, spanY);
    [self.mapView setRegion:region animated:YES];

    self.searchBar.hidden = YES;
}

-(void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated
{
    self.searchBar.hidden = NO;
}

@end
