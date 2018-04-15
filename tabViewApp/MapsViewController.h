//
//  MapsViewController.h
//  Shenzhen Eye
//
//  Created by Asif Seraje on 12/25/17.
//  Copyright © 2017 serajeorg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapsViewController : UIViewController<UIScrollViewDelegate,UIGestureRecognizerDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UIButton *btn1cl;

@end
