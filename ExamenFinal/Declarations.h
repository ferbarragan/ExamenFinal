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
#import "Json_weather.h"
#import "Parser.h"

/* For debug support */
#define nDebugEnable    0
#define print(x)        if(nDebugEnable){(x);}

typedef struct {
    char *prodName;
    char *prodPrice;
    char *image;
} tst_Products;

#define MAX_PRODUCTS (10)

extern NSDictionary *mjsonWeather;
extern tst_Products stProducts[MAX_PRODUCTS];

@interface Declarations : NSObject

@end
