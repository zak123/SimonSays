//
//  ViewController.m
//  SimonSays
//
//  Created by Zachary Mallicoat on 3/17/15.
//  Copyright (c) 2015 cghcapital. All rights reserved.
//

#import "ViewController.h"
#import "SimonSays.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.simonSays = [[SimonSays alloc] init];
    self.simonSays.delegate = self;
    NSLog(@"%@",self.simonSays.stepsToWin);
    
    // Do any additional setup after loading the view, typically from a nib.
}





- (IBAction)blueButton:(id)sender {
    NSLog(@"blue");
    self.simonSays.playerChoice = @"blue";
    if ([self.simonSays playerWasCorrect]) {
        self.wrongLabel.alpha = 0;

        self.correctLabel.alpha = 1.0;
        
      
        
    }
    else {
        self.correctLabel.alpha = 0;

        self.wrongLabel.alpha = 1.0;
    }
}
- (IBAction)greenButton:(id)sender {
    NSLog(@"green");
    self.simonSays.playerChoice = @"green";
    if ([self.simonSays playerWasCorrect]) {
        self.wrongLabel.alpha = 0;

        self.correctLabel.alpha = 1.0;

    }
    else {
        self.correctLabel.alpha = 0;
        self.wrongLabel.alpha = 1.0;
    }
}
- (IBAction)redButton:(id)sender {
    NSLog(@"red");
    self.simonSays.playerChoice = @"red";
    if ([self.simonSays playerWasCorrect]) {
        self.wrongLabel.alpha = 0;

        self.correctLabel.alpha = 1.0;

    }
    else {
        self.correctLabel.alpha = 0;

        self.wrongLabel.alpha = 1.0;
    }
}
- (IBAction)yellowButton:(id)sender {
    NSLog(@"yellow");
    self.simonSays.playerChoice = @"yellow";
    if ([self.simonSays playerWasCorrect]) {
        self.wrongLabel.alpha = 0;

        
        
        self.correctLabel.alpha = 1.0;

    }
    else {
        self.correctLabel.alpha = 0;

        self.wrongLabel.alpha = 1.0;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
