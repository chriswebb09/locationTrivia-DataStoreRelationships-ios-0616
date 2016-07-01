//
//  FISAddTriviaViewController.m
//  locationTrivia-dataStore
//
//  Created by Christopher Webb-Orenstein on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddTriviaViewController.h"

@interface FISAddTriviaViewController()
@property (strong, nonatomic) FISLocationsDataStore *store;
@property (weak, nonatomic) IBOutlet UITextField *triviaText;
@property (nonatomic,assign) NSUInteger triviaIndex;


@end

@implementation FISAddTriviaViewController
- (IBAction)addTrivia:(id)sender {
    FISTrivium *newTrivia = [[FISTrivium alloc]initWithContent:self.triviaText.text likes:0];
    self.triviaIndex = [self.store.locations indexOfObjectIdenticalTo:self.passedTrivium];


    [self.store.locations[self.triviaIndex] addTrivia:newTrivia];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
