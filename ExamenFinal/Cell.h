//
//  Cell.h
//  ExamenFinal
//
//  Created by Christian Barragan on 27/08/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Cell;

@protocol CellDelegate <NSObject>

-(void)whenBuyButtonPressed:(Cell *)cell;

@end

@interface Cell : UITableViewCell

/* UI elements Outlets  */
@property (weak, nonatomic) IBOutlet UILabel *lblProdName;
@property (weak, nonatomic) IBOutlet UILabel *lblProdPrice;
@property (weak, nonatomic) IBOutlet UIImageView *imgProd;
@property (weak, nonatomic) IBOutlet UIButton *btnProdBuy;
@property (nonatomic) int row;

/* UI elements Actions */
- (IBAction)btnProdBuyPressed:(id)sender;

/* Class delegates */
@property (nonatomic, assign) id<CellDelegate>delegate;

@end
