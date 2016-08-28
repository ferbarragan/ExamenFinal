//
//  OCMapperConfig.m
//  WebServicesExample
//
//  Created by Christian Barragan on 19/07/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import "Declarations.h"
#import "OCMapperConfig.h"
#import "OCMapper.h"

@implementation OCMapperConfig

+ (void) configure {
    InCodeMappingProvider *inCodeMappingProvider = [[InCodeMappingProvider alloc] init];
    CommonLoggingProvider *commonLoggingProvider = [[CommonLoggingProvider alloc] initWithLogLevel:LogLevelError];
    
    [[ObjectMapper sharedInstance] setMappingProvider:inCodeMappingProvider];
    [[ObjectMapper sharedInstance] setLoggingProvider:commonLoggingProvider];
    
    /******************* Customized objects **********************/
    [inCodeMappingProvider mapFromDictionaryKey:@"weather"
                                  toPropertyKey:@"weather"
                                 withObjectType:[Json_weather class]
                                       forClass:[ObjectResponse class]];
}

@end
