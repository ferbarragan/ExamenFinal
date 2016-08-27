//
//  Parser.m
//  WebServicesExample
//
//  Created by Christian Barragan on 19/07/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import "Parser.h"

@implementation Parser

+(ObjectResponse *)parseWeatherObject {
    if(mjsonWeather != nil) {
        ObjectResponse *customizedObject = [[ObjectMapper sharedInstance] objectFromSource:mjsonWeather
                                                                         toInstanceOfClass:[ObjectResponse class]];
        return customizedObject;
    }
    return nil;
}

@end
