//
//  SimonSays.h
//  SimonSays
//
//  Created by Zachary Mallicoat on 3/17/15.
//  Copyright (c) 2015 cghcapital. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimonSays.h"

@class SimonSays;

@protocol SimonSaysDelegate <NSObject>

-(void)game:(SimonSays *)simon showReplayOfSteps:(NSArray*) steps;



@end

@interface SimonSays : NSObject

@property (strong, nonatomic) NSMutableArray *stepsToWin;
@property (strong, nonatomic) NSArray *possibleColors;
@property (assign) BOOL shouldStartRound;
@property (nonatomic, assign) BOOL playerWasCorrect;
@property (nonatomic, strong) NSString *playerChoice;
@property (nonatomic, strong) id<SimonSaysDelegate> delegate;

-(void) playerWasWrong;
-(void) playerStartedRound;
-(void) replaySteps;

@end
