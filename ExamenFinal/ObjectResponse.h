//
//  ObjectResponse.h
//  ExamenFinal
//
//  Created by Christian Barragan on 27/08/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Json_main.h"
#import "Json_weather.h"

@interface ObjectResponse : NSObject

/*  */
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) Json_main *main;
@property (nonatomic, strong) NSArray *weather;



@end
