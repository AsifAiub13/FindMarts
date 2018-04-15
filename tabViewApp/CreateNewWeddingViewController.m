//
//  CreateNewWeddingViewController.m
//  tabViewApp
//
//  Created by Asif Seraje on 1/5/18.
//  Copyright © 2018 serajeorg. All rights reserved.
//

#import "CreateNewWeddingViewController.h"
#import <PDFKit/PDFKit.h>
//#import <LazyPDFKit/LazyPDFKit.h>
//#import <ILPDFKit/ILPDFKit.h>
@interface CreateNewWeddingViewController ()/*<LazyPDFViewControllerDelegate>*/

@end

@implementation CreateNewWeddingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /******************/
//    NSArray *pdfs = [[NSBundle mainBundle] pathsForResourcesOfType:@"pdf" inDirectory:nil];
//    NSString *filePath = [pdfs firstObject]; assert(filePath != nil); // Path to first PDF file
//    ILPDFDocument *document = [[ILPDFDocument alloc] initWithPath:filePath];
//    ILPDFViewController *pdfVC =[[ILPDFViewController alloc]init];
//    pdfVC.document=document;
//    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeInfoLight]; // change this to use your image
//    [rightButton addTarget:self
//                    action:@selector(savePDFclicked)
//          forControlEvents:UIControlEventTouchUpInside];
//    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
//    self.navigationItem.rightBarButtonItem = rightButtonItem;
//    //[self presentViewController:pdfVC animated:YES completion:NULL];
//    [self.navigationController pushViewController:pdfVC animated:YES];
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
//- (IBAction)segmentWeddingPressed:(id)sender {
//    PDFView *View = [[PDFView alloc] initWithFrame: self.view.bounds];
//    View.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleBottomMargin;
//    View.autoScales = YES ;
//    View.displayDirection = kPDFDisplayDirectionVertical;
//    View.displayMode = kPDFDisplaySinglePageContinuous;
//    View.displaysRTL = YES ;
//    [View setDisplaysPageBreaks:YES];
//    [View setDisplayBox:kPDFDisplayBoxTrimBox];
//    [View zoomIn:self];
//    [self.view addSubview:View];
//    
//    NSURL * URL = [[NSBundle mainBundle] URLForResource: @"test" withExtension: @ "pdf" ];
//    PDFDocument * document = [[PDFDocument alloc] initWithURL: URL];
//    View.document = document;
//}

-(void) savePDFclicked{
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Save PDF" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        // OK button tapped.
        
        [self dismissViewControllerAnimated:YES completion:^{
        }];
    }]];

    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        
        // Distructive button tapped.
        [self dismissViewControllerAnimated:YES completion:^{
        }];
    }]];
 
    // Present action sheet.
    [self presentViewController:actionSheet animated:YES completion:nil];
}

/*******************/
//- (void)openLazyPDF
//{
//    NSString *phrase = nil; // Document password (for unlocking most encrypted PDF files)
//
//    NSArray *pdfs = [[NSBundle mainBundle] pathsForResourcesOfType:@"pdf" inDirectory:nil];
//
//    NSString *filePath = [pdfs firstObject]; assert(filePath != nil); // Path to first PDF file
//
//    LazyPDFDocument *document = [LazyPDFDocument withDocumentFilePath:filePath password:phrase];
//
//    if (document != nil) // Must have a valid LazyPDFDocument object in order to proceed with things
//    {
//        LazyPDFViewController *lazyPDFViewController = [[LazyPDFViewController alloc] initWithLazyPDFDocument:document];
//
//        lazyPDFViewController.delegate = self; // Set the LazyPDFViewController delegate to self
//
//#if (DEMO_VIEW_CONTROLLER_PUSH == TRUE)
//
//        [self.navigationController pushViewController:lazyPDFViewController animated:YES];
//
//#else // present in a modal view controller
//
//        lazyPDFViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
//        lazyPDFViewController.modalPresentationStyle = UIModalPresentationFullScreen;
//
//        [self presentViewController:lazyPDFViewController animated:YES completion:NULL];
//
//#endif // DEMO_VIEW_CONTROLLER_PUSH
//    }
//    else // Log an error so that we know that something went wrong
//    {
//        NSLog(@"%s [LazyPDFDocument withDocumentFilePath:'%@' password:'%@'] failed.", __FUNCTION__, filePath, phrase);
//    }
//}
//
//#pragma mark - LazyPDFViewControllerDelegate methods
//
//- (void)dismissLazyPDFViewController:(ILPDFViewController *)viewController
//{
//    // dismiss the modal view controller
//    [self dismissViewControllerAnimated:YES completion:NULL];
//}
/*******************/
//- (void)openLazyPDF2
//{
//    NSString *phrase = nil; // Document password (for unlocking most encrypted PDF files)
//
//    NSArray *pdfs = [[NSBundle mainBundle] pathsForResourcesOfType:@"pdf" inDirectory:nil];
//
//    NSString *filePath = [pdfs firstObject]; assert(filePath != nil); // Path to first PDF file
//
//    ILPDFDocument *document = [[ILPDFDocument alloc] initWithPath:filePath];
//
//    if (document != nil) // Must have a valid LazyPDFDocument object in order to proceed with things
//    {
//        ILPDFViewController *lazyPDFViewController = [[ILPDFViewController alloc] ];
//
//        lazyPDFViewController.delegate = self; // Set the LazyPDFViewController delegate to self
//
//#if (DEMO_VIEW_CONTROLLER_PUSH == TRUE)
//
//        [self.navigationController pushViewController:lazyPDFViewController animated:YES];
//
//#else // present in a modal view controller
//
//        lazyPDFViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
//        lazyPDFViewController.modalPresentationStyle = UIModalPresentationFullScreen;
//
//        [self presentViewController:lazyPDFViewController animated:YES completion:NULL];
//
//#endif // DEMO_VIEW_CONTROLLER_PUSH
//    }
//    else // Log an error so that we know that something went wrong
//    {
//        NSLog(@"%s [LazyPDFDocument withDocumentFilePath:'%@' password:'%@'] failed.", __FUNCTION__, filePath, phrase);
//    }
//}
@end
