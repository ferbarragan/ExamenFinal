//
//  Start.m
//  ExamenFinal
//
//  Created by Christian Barragan on 26/08/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//
//  Disclaimer: The icons for this application where taken
//              from https://icons8.com/


#import "Start.h"
#import "TemperatureView.h"

@interface Start ()

@property GMSMapView *mapView;
@property float currLat;
@property float currLon;

@end

@implementation Start

#pragma - mark ViewController Methods
/* ------------------------------------------------------------------------------------------------------------------ */
/* - ViewController Methods ----------------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief iOS Specific Function:
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:23.9079007
                                                            longitude:-99.5448522
                                                                 zoom:3.5];
    self.mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    self.mapView.myLocationEnabled = YES;
    self.mapView.delegate = self;
    self.view = self.mapView;
    
    }
/* ------------------------------------------------------------------------------------------------------------------ */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief iOS Specific Function:
 */
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    TemperatureView * temperatureView = [segue destinationViewController];
    temperatureView.latitude  = self.currLat;
    temperatureView.longitude = self.currLon;
}
/* ------------------------------------------------------------------------------------------------------------------ */

#pragma - mark GoogleMaps Delegate Methods
/* ------------------------------------------------------------------------------------------------------------------ */
/* - GoogleMaps Methods --------------------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief GoogleMaps SDK Specific Function:
 */
- (void)mapView:(GMSMapView *)mapView didTapAtCoordinate:(CLLocationCoordinate2D)coordinate {
    /* Erase the last marker. */
    [self.mapView clear];
    /* Create a new marker */
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = coordinate; /* Set the marker at the touched coordinate. */
    marker.title = @"View weather";
    marker.map = self.mapView; /* Add marker to the MapView */
    
    /* Store the current marker's coordinates. */
    self.currLat = marker.position.latitude;
    self.currLon = marker.position.longitude;
    
    /* Set the recently created marked as selected. */
    [self.mapView setSelectedMarker:marker];
}

/*! \brief GoogleMaps SDK Specific Function:
 */
-(void)mapView:(GMSMapView *)mapView didTapInfoWindowOfMarker:(GMSMarker *)marker {
    /* Move to the segue idSegueTemperatureView. */
    [self performSegueWithIdentifier:@"idSegueTemperatureView" sender:self];
    
}

@end
