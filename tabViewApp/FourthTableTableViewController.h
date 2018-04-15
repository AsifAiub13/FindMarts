//
//  FourthTableTableViewController.h
//  tabViewApp
//
//  Created by Asif Seraje on 1/5/18.
//  Copyright © 2018 serajeorg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FourthTableViewCell.h"

@interface FourthTableTableViewController : UITableViewController<UITableViewDelegate, UITableViewDataSource,UITextFieldDelegate>

@property UITextField *txtField;
@property NSMutableDictionary *masterDictionary;

@end
