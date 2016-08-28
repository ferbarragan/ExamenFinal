//
//  BuyView.m
//  ExamenFinal
//
//  Created by Christian Barragan on 26/08/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import "BuyView.h"

@interface BuyView ()

@end

@implementation BuyView

#pragma - mark ViewController Methods
/* ------------------------------------------------------------------------------------------------------------------ */
/* - ViewController Methods ----------------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief This settles a backgound layer with a gradient color.
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* Configure a NavigationBar to have a "Back" button. */
    UINavigationBar *navbar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, 320, 60)];
    [self.view addSubview:navbar];
    
    UINavigationItem *item = [[UINavigationItem alloc]
                              init];
    navbar.items= @[item];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Atrás"
                                   style:UIBarButtonItemStylePlain
                                   target:self
                                   action:@selector(doneButtonPressed:)];
    item.leftBarButtonItem = backButton;
    
    /* Configure the UI elements. */
    self.imgPay.image = [UIImage imageNamed:[NSString stringWithUTF8String:stProducts[self.row].image]];
    [self.btnPay setTitle:[NSString stringWithFormat:@"$%s", stProducts[self.row].prodPrice] forState:UIControlStateNormal];
    
}
/* ------------------------------------------------------------------------------------------------------------------ */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/* ------------------------------------------------------------------------------------------------------------------ */

#pragma mark - Action Methods.
/* ------------------------------------------------------------------------------------------------------------------ */
/* - Action Methods ------------------------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief Action when the button backButton is pressed. This will return to the last view controller.
 */
- (IBAction)doneButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief Action when the button btnPay is pressed.
 */
- (IBAction)btnPayPressed:(id)sender {
}
/* ------------------------------------------------------------------------------------------------------------------ */

@end
