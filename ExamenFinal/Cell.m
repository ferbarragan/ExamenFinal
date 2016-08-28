//
//  Cell.m
//  ExamenFinal
//
//  Created by Christian Barragan on 27/08/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import "Cell.h"

@implementation Cell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
/* ------------------------------------------------------------------------------------------------------------------ */

#pragma mark - Action Methods.
/* ------------------------------------------------------------------------------------------------------------------ */
/* - Action Methods ------------------------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief Action when the button btnProdBuy is pressed.
 */
- (IBAction)btnProdBuyPressed:(id)sender {
    if([self.delegate respondsToSelector:@selector(whenBuyButtonPressed:)]) {
        [self.delegate whenBuyButtonPressed:self];
    }
}
/* ------------------------------------------------------------------------------------------------------------------ */
@end
