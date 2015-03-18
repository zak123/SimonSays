//
//  SimonSays.m
//  SimonSays
//
//  Created by Zachary Mallicoat on 3/17/15.
//  Copyright (c) 2015 cghcapital. All rights reserved.
//

#import "SimonSays.h"

@implementation SimonSays {
    NSString * nextColor;
    NSInteger currentColor;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        self.possibleColors = @[    @"blue",
                                    @"green",
                                    @"red",
                                    @"yellow"];
        self.stepsToWin = [[NSMutableArray alloc] init];

        [self generateNextStep];
        currentColor = 0;
        
        
    }
    
    return self;
}


-(void)game:(SimonSays *)simon showReplayOfSteps:(NSArray*) steps {
}

-(void)generateNextStep {
    
    currentColor++;
    int randomIndex = arc4random_uniform(3);
    NSString *randomObject;
    randomObject = [_possibleColors objectAtIndex:randomIndex];
    [self.stepsToWin addObject:randomObject];
}


-(BOOL) playerWasCorrect {
//    currentColor = _stepsToWin.count;
    if ([self.stepsToWin[currentColor]  isEqualToString:_playerChoice]) {
        
        [self generateNextStep];
        NSLog(@"Correct! Now: %@", _stepsToWin);
        return YES;
    }
    NSLog(@"Wrong!");
    return NO;
    
}


-(void) playerWasWrong {
    [self.stepsToWin removeAllObjects];
    
}

-(void) playerStartedRound {
    // add logic to start round
    self.shouldStartRound = YES;
}


@end
