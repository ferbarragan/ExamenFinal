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
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.86
                                                            longitude:151.20
                                                                 zoom:6];
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
