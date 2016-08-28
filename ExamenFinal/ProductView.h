//
//  ProductView.h
//  ExamenFinal
//
//  Created by Christian Barragan on 26/08/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "Cell.h"

@interface ProductView : UIViewController <UITableViewDelegate, UITableViewDataSource, CellDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tblProducts;

@end
