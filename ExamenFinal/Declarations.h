//
//  Declarations.h
//  ExamenFinal
//
//  Created by Christian Barragan on 27/08/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SBJson.h"
#import "ObjectMapper.h"
#import "ObjectResponse.h"
#import "Json_main.h"
#import "Parser.h"

/* For debug support */
#define nDebugEnable    1
#define print(x)        if(nDebugEnable){(x);}

extern NSDictionary *mjsonWeather;

@interface Declarations : NSObject

@end
