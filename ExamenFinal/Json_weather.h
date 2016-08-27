//
//  Json_weather.h
//  ExamenFinal
//
//  Created by Christian Barragan on 27/08/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Json_weather : NSObject

@property (nonatomic) int id;
@property (nonatomic) NSString * main;
@property (nonatomic) NSString * description;
@property (nonatomic) NSString * icon;

@end
