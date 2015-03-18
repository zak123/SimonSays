//
//  ViewController.h
//  SimonSays
//
//  Created by Zachary Mallicoat on 3/17/15.
//  Copyright (c) 2015 cghcapital. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SimonSays.h"

@interface ViewController : UIViewController <SimonSaysDelegate>

@property (nonatomic, strong) SimonSays *simonSays;
@property (strong, nonatomic) IBOutlet UILabel *wrongLabel;
@property (strong, nonatomic) IBOutlet UILabel *correctLabel;

@end

