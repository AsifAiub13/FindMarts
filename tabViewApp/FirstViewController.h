//
//  FirstViewController.h
//  tabViewApp
//
//  Created by MD. Asif Seraje on 9/23/17.
//  Copyright © 2017 serajeorg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "AppDelegate.h"
//#import <LazyPDFKit/LazyPDFKit.h>
@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btnUpcomingWedding;
@property (weak, nonatomic) IBOutlet UIButton *btnPastWedding;
@property (weak, nonatomic) IBOutlet UIButton *btnWeddingLeads;
@property (weak, nonatomic) IBOutlet UIButton *btnCreateNewWedding;

//@property (nonatomic, strong) LazyPDFDrawingView *drawingView;

@end

