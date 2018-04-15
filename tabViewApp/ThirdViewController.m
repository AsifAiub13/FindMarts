//
//  ThirdViewController.m
//  tabViewApp
//
//  Created by Asif Seraje on 1/5/18.
//  Copyright © 2018 serajeorg. All rights reserved.
//

#import "ThirdViewController.h"
#import "FourthTableTableViewController.h"
#import "FirstViewController.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setImageBackground:@"back3.jpg"];
    self.title=@"Public Information";
    [self.navigationController.navigationBar setBarTintColor:[UIColor blackColor]];
    self.navigationController.navigationBar.barStyle = UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btn3pressed:(id)sender {
}
- (IBAction)btnPressedListOfAllWeddings:(id)sender {
}
- (IBAction)btnListOfAvailableDates:(id)sender {
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
