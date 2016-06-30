//
//  FISAddLocationViewController.m
//  locationTrivia-dataStore
//
//  Created by Christopher Webb-Orenstein on 6/30/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"

@interface FISAddLocationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *triviumTextField;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@end

@implementation FISAddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.triviumTextField.accessibilityLabel = @"Trivium Text Field";
    self.triviumTextField.accessibilityIdentifier = @"Trivium Text Field";
    
    self.saveButton.accessibilityLabel = @"Save Button";
    self.saveButton.accessibilityIdentifier = @"Save Button";
    
    self.cancelButton.accessibilityLabel = @"Cancel Button";
    self.cancelButton.accessibilityIdentifier = @"Cancel Button";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)saveButtonTapped:(id)sender {
    FISTrivium *trivia = [[FISTrivium alloc]init];
    trivia.likes = 0;
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
