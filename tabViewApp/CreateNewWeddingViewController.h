//
//  CreateNewWeddingViewController.h
//  tabViewApp
//
//  Created by Asif Seraje on 1/5/18.
//  Copyright © 2018 serajeorg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateNewWeddingViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentWedding;
-(void) savePDFclicked;
@end
