//
//  FISAddTriviaViewController.h
//  locationTrivia-dataStore
//
//  Created by Christopher Webb-Orenstein on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "FISLocationsDataStore.h"
#import "FISLocation.h"

@interface FISAddTriviaViewController : UIViewController
@property (strong, nonatomic) FISTrivium *passedTrivium;
@property (weak, nonatomic) IBOutlet UITextField *addTriviaTextField;

@end
