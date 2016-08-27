//
//  ObjectResponse.h
//  ExamenFinal
//
//  Created by Christian Barragan on 27/08/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Json_main.h"

@interface ObjectResponse : NSObject

/*  */
@property (nonatomic, strong) Json_main *main;
@property (nonatomic, strong) NSString *name;

@end
