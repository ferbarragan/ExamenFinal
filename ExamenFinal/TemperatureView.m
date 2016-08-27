//
//  TemperatureView.m
//  ExamenFinal
//
//  Created by Christian Barragan on 26/08/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import "TemperatureView.h"
#import "BackgroundLayer.h"

#define nLat @"20.609835"
#define nLon @"-103.448989"
#define KELVIN_CONV 273.75
#define nURLMain        @"http://openweathermap.org/img/w/"

@interface TemperatureView ()

@end

@implementation TemperatureView

#pragma - mark ViewController Methods
/* ------------------------------------------------------------------------------------------------------------------ */
/* - ViewController Methods ----------------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief This settles a backgound layer with a gradient color.
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* Change the background. */
    [self setBackground];
    
    /* Configure a NavigationBar to have a "Back" button. */
    UINavigationBar *navbar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, 320, 60)];
    [self.view addSubview:navbar];
    
    UINavigationItem *item = [[UINavigationItem alloc]
                              init];
    navbar.items= @[item];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Back"
                                   style:UIBarButtonItemStylePlain
                                   target:self
                                   action:@selector(doneButtonPressed:)];
    item.leftBarButtonItem = backButton;
    
    /* Call the Web Service */
    mjsonWeather = [WebServices getWeatherWithLatitude:[NSString stringWithFormat:@"%f",self.latitude] AndLongitude:[NSString stringWithFormat:@"%f",self.longitude]];
    
    ObjectResponse *objectResponse = [Parser parseWeatherObject];
    
    NSString *stName = objectResponse.name; /* Store the parsed name. */
    
    Json_main *main = objectResponse.main;
    //Json_weather *weather = objectResponse.weather[0];
    /* Get the temperatures */
    float temp_max = main.temp_max - KELVIN_CONV;
    float temp_min = main.temp_min - KELVIN_CONV;
    /* Get the humidity */
    int humidity = main.humidity;
    /* Get the weather icon */
    //NSString *icon = [[NSString alloc] initWithString:weather.icon];
    NSString *icon = @"04d";
    NSString *iconURL = [[NSString alloc] initWithFormat:@"%@%@.png",nURLMain,icon];
    NSURL *url = [NSURL URLWithString:iconURL];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *img = [[UIImage alloc] initWithData:data];
    //CGSize size = img.size;
    
    /* Update the UI elements with the parsed information. */
    self.lblName.text = stName;
    self.lblMaxTempVal.text = [NSString stringWithFormat:@"%.1fºC", temp_max];
    self.lblMinTempVal.text = [NSString stringWithFormat:@"%.1fºC", temp_min];
    self.lblHumidityVal.text = [NSString stringWithFormat:@"%d%%", humidity];
    self.imgWeatherIcon.image = img;
    //self.imgWeatherIcon.contentMode
    
}
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief This settles a backgound layer with a gradient color.
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief This settles a backgound layer with a gradient color.
 */
- (void)setBackground {
    CAGradientLayer *bgLayer = [BackgroundLayer lightBlueGradient];
    bgLayer.frame = self.view.bounds;
    [self.view.layer insertSublayer:bgLayer atIndex:0];
}
/* ------------------------------------------------------------------------------------------------------------------ */


- (IBAction)doneButtonPressed:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
