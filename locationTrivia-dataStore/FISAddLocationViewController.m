//
//  FISLocationsTriviaViewController.m
//  locationTrivia-dataStore
//
//  Created by Christopher Webb-Orenstein on 6/30/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"
#import "FISLocationsDataStore.h"
#import "FISTrivium.h"
#import "FISLocation.h"

@interface FISAddLocationViewController ()
@property (strong, nonatomic) FISLocationsDataStore *store;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *latitudeField;
@property (weak, nonatomic) IBOutlet UITextField *longitudeField;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *addButton;
//@property (strong, nonatomic) NSMutableArray *locations;
@end

@implementation FISAddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //FISLocationsDataStore *locationsDataStore = [FISLocationsDataStore sharedLocationsDataStore];
    self.store = [FISLocationsDataStore sharedLocationsDataStore];
    
    self.nameField.accessibilityIdentifier = @"nameField";
    self.nameField.accessibilityLabel = @"nameField";
    
    self.latitudeField.accessibilityLabel = @"latitudeField";
    self.latitudeField.accessibilityIdentifier = @"latitudeField";
    
    self.longitudeField.accessibilityLabel = @"longitudeField";
    self.longitudeField.accessibilityIdentifier = @"longitudeField";
    
    self.saveButton.accessibilityLabel = @"saveButton";
    self.saveButton.accessibilityIdentifier = @"saveButton";
    
    self.cancelButton.accessibilityLabel = @"cancelButton";
    self.cancelButton.accessibilityIdentifier = @"cancelButton";
    
    self.navigationItem.rightBarButtonItem.accessibilityLabel = @"addButton";
    self.navigationItem.rightBarButtonItem.accessibilityIdentifier = @"addButton";
    
    //locationsDataStore.locations;
    
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
    FISLocation *newLocation = [[FISLocation alloc]init];
    newLocation.name = self.nameField.text;
    newLocation.latitude = [self.latitudeField.text floatValue];
    newLocation.longitude = [self.longitudeField.text floatValue];
    
    [self.store.locations addObject:newLocation];
    [self dismissViewControllerAnimated:YES completion:nil];
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
