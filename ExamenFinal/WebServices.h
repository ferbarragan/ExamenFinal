//
//  WebServices.h
//  WebServicesExample
//
//  Created by Christian Barragan on 19/07/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WebServices : NSObject

+ (NSDictionary *)getWeatherWithLatitude:(NSString *)latitude AndLongitude:(NSString*)longitude;
+ (NSDictionary*) sendPost:(NSString*)postUrl forData:(NSString *)data andMode:(BOOL)mode;

@end
