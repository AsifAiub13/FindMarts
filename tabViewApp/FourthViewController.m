//
//  FourthViewController.m
//  tabViewApp
//
//  Created by Asif Seraje on 1/5/18.
//  Copyright © 2018 serajeorg. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title=@"Settings";
    [self.navigationController.navigationBar setBarTintColor:[UIColor blackColor]];
    self.navigationController.navigationBar.barStyle = UIStatusBarStyleLightContent;
    self.btnLang.layer.borderWidth=1.5f;
    self.btnLang.layer.borderColor=[ UIColor whiteColor].CGColor;
    self.btnHelp.layer.borderWidth=1.5f;
    self.btnHelp.layer.borderColor=[ UIColor whiteColor].CGColor;
    self.btnRate.layer.borderWidth=1.5f;
    self.btnRate.layer.borderColor=[ UIColor whiteColor].CGColor;
    self.btnAbout.layer.borderWidth=1.5f;
    self.btnAbout.layer.borderColor=[ UIColor whiteColor].CGColor;
    self.btnLang.layer.cornerRadius = 10;
    self.btnLang.clipsToBounds = YES;
    self.btnHelp.layer.cornerRadius = 10;
    self.btnHelp.clipsToBounds = YES;
    self.btnRate.layer.cornerRadius = 10;
    self.btnRate.clipsToBounds = YES;
    self.btnAbout.layer.cornerRadius = 10;
    self.btnAbout.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)btnPressedbtnCelebrantSettings:(id)sender {
}
- (IBAction)btnPressedLogoUpload:(id)sender {
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
