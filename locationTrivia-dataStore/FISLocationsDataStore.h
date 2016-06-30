//
//  FISLocationsDataStore.h
//  locationTrivia-dataStore
//
//  Created by Christopher Webb-Orenstein on 6/30/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISLocation.h"

@interface FISLocationsDataStore : NSObject

@property (strong, nonatomic) NSMutableArray *locations;

+ (instancetype)sharedLocationsDataStore;

@end
