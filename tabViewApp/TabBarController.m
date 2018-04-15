//
//  TabBarController.m
//  tabViewApp
//
//  Created by Asif Seraje on 1/5/18.
//  Copyright © 2018 serajeorg. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    // Do any additional setup after loading the view.
}
//reverse tabbar 
/*- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    [self.tabBar invalidateIntrinsicContentSize];
    
    CGFloat tabSize = 44.0;
    
    UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
    
    if (UIInterfaceOrientationIsLandscape(orientation))
    {
        tabSize = 32.0;
    }
    CGRect tabFrame = self.tabBar.frame;
    tabFrame.size.height = tabSize;
    tabFrame.origin.y = self.view.frame.origin.y+18;
    self.tabBar.frame = tabFrame;

}*/
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

@end
