//
//  SecondViewController.m
//  tabViewApp
//
//  Created by MD. Asif Seraje on 9/23/17.
//  Copyright © 2017 serajeorg. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setImageBackground:@"back3.jpg"];
    self.title=@"Popular Places";
    [self.navigationController.navigationBar setBarTintColor:[UIColor blackColor]];
    self.navigationController.navigationBar.barStyle = UIStatusBarStyleLightContent;
    self.btnWeddingDetails.layer.borderWidth=1.5f;
    self.btnWeddingDetails.layer.borderColor=[ UIColor whiteColor].CGColor;
    self.btnWeddingDetails.layer.cornerRadius = 10;
    self.btnWeddingDetails.clipsToBounds = YES;
    self.btnVenueDetails.layer.borderWidth=1.5f;
    self.btnVenueDetails.layer.borderColor=[ UIColor whiteColor].CGColor;
    self.btnVenueDetails.layer.cornerRadius = 10;
    self.btnVenueDetails.clipsToBounds = YES;
    self.btnPartner1.layer.borderWidth=1.5f;
    self.btnPartner1.layer.borderColor=[ UIColor whiteColor].CGColor;
    self.btnPartner1.layer.cornerRadius = 10;
    self.btnPartner1.clipsToBounds = YES;
    self.btnPartner2.layer.borderWidth=1.5f;
    self.btnPartner2.layer.borderColor=[ UIColor whiteColor].CGColor;
    self.btnPartner2.layer.cornerRadius = 10;
    self.btnPartner2.clipsToBounds = YES;
    self.btnForms.layer.borderWidth=1.5f;
    self.btnForms.layer.borderColor=[ UIColor whiteColor].CGColor;
    self.btnForms.layer.cornerRadius = 10;
    self.btnForms.clipsToBounds = YES;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnPressedWeddingDetails:(id)sender {
}
- (IBAction)btnPressedVenueDetails:(id)sender {
}
- (IBAction)btnPressedPartner1:(id)sender {
}
- (IBAction)btnPressedPartner2:(id)sender {
}
- (IBAction)btnPressedForms:(id)sender {
}
-(void)setImageBackground:(NSString*)imageName{
    UINavigationController* navigationController = [self navigationController];
    float height = navigationController.toolbar.frame.size.height;
    CGSize size = self.view.frame.size;
    size.height = size.height;
    UIGraphicsBeginImageContext(size);
    CGRect bounds = self.view.bounds;
    bounds.origin.y = bounds.origin.y + height;
    bounds.size.height = bounds.size.height-height;
    [[UIImage imageNamed:imageName] drawInRect:bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
}



@end
