//
//  LoginViewController.h
//  tabViewApp
//
//  Created by Asif Seraje on 11/27/17.
//  Copyright © 2017 serajeorg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *TitleButton;
@property (weak, nonatomic) IBOutlet UITextField *txtfldUserName;
@property (weak, nonatomic) IBOutlet UITextField *txtfldPassword;
@property (weak, nonatomic) IBOutlet UIButton *btnForgotPassword;
@property (weak, nonatomic) IBOutlet UIButton *btnLoginAsCustomer;
@property (weak, nonatomic) IBOutlet UIButton *btnLoginAsDriver;

@end
