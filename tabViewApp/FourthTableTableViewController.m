//
//  FourthTableTableViewController.m
//  tabViewApp
//
//  Created by Asif Seraje on 1/5/18.
//  Copyright © 2018 serajeorg. All rights reserved.
//

#import "FourthTableTableViewController.h"

@interface FourthTableTableViewController ()

@end

@implementation FourthTableTableViewController
@synthesize txtField;
- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    self.masterDictionary=[[NSMutableDictionary alloc]init];
    [self.txtField setDelegate:self];
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Save"
                                   style:UIBarButtonItemStyleDone
                                   target:self
                                   action:@selector(savePressed)];
    self.navigationItem.rightBarButtonItem = saveButton;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidChange:) name:UITextFieldTextDidChangeNotification object:self.txtField];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidEndEditing:) name:UITextFieldTextDidEndEditingNotification object:self.txtField];
    
    [self.txtField setReturnKeyType:UIReturnKeyDone];
    [self.txtField addTarget:self
                      action:@selector(textFieldFinished:)
            forControlEvents:UIControlEventEditingDidEndOnExit];
    self.txtField.text = [[NSUserDefaults standardUserDefaults]objectForKey:@"userText"];

}
- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:false];

    
}
-(void)savePressed{
//    if (self.txtField.markedTextRange == nil)
//    {
//        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//        [defaults setObject:self.txtField.text forKey:@"userText"];
//        [defaults synchronize];
//    }
    [self.masterDictionary setObject:self.txtField.text forKey:@"Wedding Status"];
    NSString *temp = [self.masterDictionary objectForKey:@"Wedding Status"];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

    NSString *strTextViewText = [NSString stringWithFormat:@"%@",[defaults objectForKey:@"userText"]];
}
- (IBAction)textFieldFinished:(id)sender

{
    // [sender resignFirstResponder];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                    reuseIdentifier:CellIdentifier];
    }
    self.txtField = [[UITextField alloc] initWithFrame:CGRectMake(190.0, 7.0, 170.0, 30.0)];
    [self.txtField setBorderStyle:UITextBorderStyleRoundedRect];
    
    if (indexPath.row == 0){
        
        cell.textLabel.text = @"Wedding Status ";
        NSString *tste = self.txtField.text;
        NSLog(@"tste %@",tste);
        
    }else if (indexPath.row == 1){
        
        cell.textLabel.text = @"Wedding Day ";
        NSString *tste2 = self.txtField.text;
        NSLog(@"tste2 %@",tste2);
    }else if (indexPath.row == 2){
        
        cell.textLabel.text = @"Wedding Date ";
    }else if (indexPath.row == 3){
        
        cell.textLabel.text = @"Ceremony Time ";
    }else if (indexPath.row == 4){
        
        cell.textLabel.text = @"Date NOIM Received ";
    }else if (indexPath.row == 5){
        
        cell.textLabel.text = @"Number of Guests ";
    }else if (indexPath.row == 6){
        
        cell.textLabel.text = @"Number of Attendants ";
    }else if (indexPath.row == 7){
        
        cell.textLabel.text = @"Partner 1 Witness ";
    }else if (indexPath.row == 8){
        
        
        
        
        cell.textLabel.text = @"Partner 2 Witness ";
    }else if (indexPath.row == 9){
        
        
        
        
        cell.textLabel.text = @"Rehearsal Date ";
    }else if (indexPath.row == 10){
        
        
        
        
        cell.textLabel.text = @"Rehearsal Time ";
    }else if (indexPath.row == 11){
        
        
        
        
        cell.textLabel.text = @"Rehearsal Location ";
    }else if (indexPath.row == 12){
        
        
        
        
        cell.textLabel.text = @"Celebrant Arrival Time ";
    }else if (indexPath.row == 13){
        
        
        
        
        cell.textLabel.text = @"Partner 1 Arrival Time ";
    }else if (indexPath.row == 14){
        
        
        
        
        cell.textLabel.text = @"Partner 2 Arrival Time ";
    }else if (indexPath.row == 15){
        
        
        
        
        cell.textLabel.text = @"Checklist";
    }else if (indexPath.row == 16){
        
        
        
        
        cell.textLabel.text = @"Checklist1";
    }else if (indexPath.row == 17){
        
        
        
        
        cell.textLabel.text = @"Checklist2";
    }else if (indexPath.row == 18){
        
        
        
        
        cell.textLabel.text = @"Checklist3";
    }else if (indexPath.row == 19){
        
        
        
        
        cell.textLabel.text = @"Checklist4";
    }else if (indexPath.row == 20){
        
        
        
        
        cell.textLabel.text = @"Checklist5";
    }else if (indexPath.row == 21){
        
        
        
        
        cell.textLabel.text = @"Checklist6";
    }else if (indexPath.row == 22){
        
        
        
        
        cell.textLabel.text = @"Quotation";
    }else if (indexPath.row == 23){
        
        
        
        
        cell.textLabel.text = @"Quotation";
    }else if (indexPath.row == 24){
        
        
        
        
        cell.textLabel.text = @"Quotation";
    }else if (indexPath.row == 25){
        
        
        
        
        cell.textLabel.text = @"Quotation";
    }else if (indexPath.row == 26){
        
        
        
        
        cell.textLabel.text = @"Quotation";
    }else if (indexPath.row == 27){
        
        
        
        
        cell.textLabel.text = @"Quotation";
    }else if (indexPath.row == 28){
        
        
        
        
        cell.textLabel.text = @"Form 15 Serial Number ";
    }else if (indexPath.row == 29){
        
        
        
        
        cell.textLabel.text = @"Photographer Name ";
    }else if (indexPath.row == 30){
        
        
        
        
        cell.textLabel.text = @"Photographer Number ";
    }else if (indexPath.row == 31){
        
        
        
        
        cell.textLabel.text = @"Photographer Email ";
    }else if (indexPath.row == 32){
        
        
        
        
        cell.textLabel.text = @"Videographer Name ";
    }else if (indexPath.row == 33){
        
        
        
        
        cell.textLabel.text = @"Videographer Phone Number ";
    }else if (indexPath.row == 34){
        
        
        
        
        cell.textLabel.text = @"Videographer Email ";
    }else if (indexPath.row == 35){
        
        
        
        
        cell.textLabel.text = @"Drivers Name ";
    }else if (indexPath.row == 36){
        
        
        
        
        cell.textLabel.text = @"Drivers Number ";
    }else if (indexPath.row == 37){
        
        
        
        
        cell.textLabel.text = @"Drivers Email ";
    }else if (indexPath.row == 38){
        
        
        
        
        cell.textLabel.text = @"Wedding Coordinator Name ";
    }else if (indexPath.row == 39){
        
        
        
        
        cell.textLabel.text = @"Wedding Coordinator Phone ";
    }else if (indexPath.row == 40){
        
        
        
        
        cell.textLabel.text = @"Wedding Coordinator Email ";
    }else if (indexPath.row == 41){
        
        
        
        
        cell.textLabel.text = @"Extra 1";
    }else {
        
        cell.textLabel.text = @"Howdy there";
    }
    [cell.contentView addSubview:self.txtField];
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    return cell;
}
-(void) buttonClicked:(UIButton*)sender
{
   // NSLog(@"you clicked on button %@", sender.tag);
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName;
    switch (section)
    {
        case 0:
            sectionName = @"Wedding Details";
            break;
    }
    return sectionName;
}
- (void)textFieldDidChange:(NSNotification *)notification {
    // Do whatever you like to respond to text changes here.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.txtField.text forKey:@"userText"];
    [defaults synchronize];
}
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
- (void)textFieldDidEndEditing:(NSNotification *)notification {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.txtField.text forKey:@"userText"];
    [defaults synchronize];
    NSString *gg = self.txtField.text;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
