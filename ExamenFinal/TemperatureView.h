//
//  TemperatureView.h
//  ExamenFinal
//
//  Created by Christian Barragan on 26/08/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebServices.h"
#import "Declarations.h"

@interface TemperatureView : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblMaxTempVal;
@property (weak, nonatomic) IBOutlet UILabel *lblMinTempVal;
@property (weak, nonatomic) IBOutlet UILabel *lblHumidityVal;

@end
