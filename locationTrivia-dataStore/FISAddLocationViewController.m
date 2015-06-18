//
//  FISAddLocationViewController.m
//  locationTrivia-dataStore
//
//  Created by Leo Kwan on 6/18/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"

@interface FISAddLocationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *latitudeTextField;
@property (weak, nonatomic) IBOutlet UITextField *longitudeTextField;
@property (nonatomic, strong) FISLocationsDataManager *dataManager;
@end

@implementation FISAddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.dataManager = [FISLocationsDataManager sharedLocationsDataManager];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)saveButtonPressed:(id)sender {
    
    FISLocation *coolNewLocation = [[FISLocation alloc] init];

    coolNewLocation.name = self.nameTextField.text;
    coolNewLocation.latitude = @([self.latitudeTextField.text integerValue]);
    coolNewLocation.longitude = @([self.longitudeTextField.text integerValue]);
    [self.dataManager.locations addObject:coolNewLocation];

    [self.navigationController popViewControllerAnimated:YES];
}



@end
