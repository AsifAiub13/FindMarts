//
//  FirstViewController.m
//  tabViewApp
//
//  Created by MD. Asif Seraje on 9/23/17.
//  Copyright © 2017 serajeorg. All rights reserved.
//

#import "FirstViewController.h"
//#import <ILPDFKit/ILPDFKit.h>

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNeedsStatusBarAppearanceUpdate];
    //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"night_in_city.jpg"]];
    [self setImageBackground:@"back3.jpg"];
    self.title=@"Hua Qiang Being";
    [self.navigationController.navigationBar setBarTintColor:[UIColor blackColor]];
    self.navigationController.navigationBar.barStyle = UIStatusBarStyleLightContent;
    self.btnUpcomingWedding.layer.borderWidth=1.5f;
    self.btnUpcomingWedding.layer.borderColor=[ UIColor whiteColor].CGColor;
    self.btnUpcomingWedding.layer.cornerRadius = 10;
    self.btnUpcomingWedding.clipsToBounds = YES;
    self.btnPastWedding.layer.borderWidth=1.5f;
    self.btnPastWedding.layer.borderColor=[ UIColor whiteColor].CGColor;
    self.btnPastWedding.layer.cornerRadius = 10;
    self.btnPastWedding.clipsToBounds = YES;

    // Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
- (IBAction)btnPressedbtnUpcomingWedding:(id)sender {
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"MapsViewController"];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)btnPressedPastWedding:(id)sender {
}
- (IBAction)btnPressedWeddingLeads:(id)sender {
}
- (IBAction)btnPressedCreateNewWedding:(id)sender {
}

@end
