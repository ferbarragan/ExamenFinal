//
//  ProductView.m
//  ExamenFinal
//
//  Created by Christian Barragan on 26/08/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import "ProductView.h"
#import "BuyView.h"

@interface ProductView ()

@property (nonatomic) int lastRowSel;

@end

@implementation ProductView

#pragma - mark ViewController Methods
/* ------------------------------------------------------------------------------------------------------------------ */
/* - ViewController Methods ----------------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief iOS Specific Function:
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* Set TableView delegates. */
    [self tableViewSetDelegates];
}
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief iOS Specific Function:
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief iOS Specific Function:
 */
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    BuyView * buyView = [segue destinationViewController];
    buyView.row = self.lastRowSel;
}
/* ------------------------------------------------------------------------------------------------------------------ */

/* ------------------------------------------------------------------------------------------------------------------ */
#pragma mark - TableView Methods.
/* ------------------------------------------------------------------------------------------------------------------ */
/* - TableView Methods ---------------------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief Make self the delegate of the textfields.
 */
- (void)tableViewSetDelegates {
    self.tblProducts.delegate = self;
    self.tblProducts.dataSource = self;
}
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief iOS Specific Function:
 */
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief iOS Specific Function:
 */
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return MAX_PRODUCTS;
}
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief iOS Specific Function:
 */
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 190;
}
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief iOS Specific Function:
 */
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    Cell *cell = (Cell *)[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"Cell" bundle:nil] forCellReuseIdentifier:@"Cell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    }
    
    cell.delegate = self;
    cell.lblProdName.text = [NSString stringWithUTF8String:stProducts[indexPath.row].prodName];
    cell.lblProdPrice.text = [NSString stringWithUTF8String:stProducts[indexPath.row].prodPrice];
    cell.imgProd.image = [UIImage imageNamed:[NSString stringWithUTF8String:stProducts[indexPath.row].image]];
    cell.row = indexPath.row;
    return cell;
}
/* ------------------------------------------------------------------------------------------------------------------ */

/*! \brief Custom Cell delegate method.
 */
-(void)whenBuyButtonPressed:(Cell *)cell {
    self.lastRowSel = cell.row;
    /* Trigger the segue. */
    [self performSegueWithIdentifier:@"idSegueBuyView" sender:self];
}
/* ------------------------------------------------------------------------------------------------------------------ */

@end
