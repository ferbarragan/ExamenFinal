//
//  BuyView.h
//  ExamenFinal
//
//  Created by Christian Barragan on 26/08/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"

@interface BuyView : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgPay;
@property (weak, nonatomic) IBOutlet UIButton *btnPay;

@property (nonatomic) int row;

- (IBAction)btnPayPressed:(id)sender;
@end
