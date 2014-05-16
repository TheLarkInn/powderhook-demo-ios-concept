//
//  PHMThirdViewController.h
//  PowderhookMobile
//
//  Created by Sean Larkin on 5/15/14.
//  Copyright (c) 2014 SeanLarkin. All rights reserved.
//


#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>

@interface PHMThirdViewController : UIViewController <MKMapViewDelegate>

@property (strong) CLLocationManager *locationManager;

@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong) CLGeocoder *geocoder;
@property (strong) CLLocation *currentLocation;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end
