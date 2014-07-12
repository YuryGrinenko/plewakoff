//
//  APAViewController.m
//  Calculator
//
//  Created by intern on 7/10/14.
//  Copyright (c) 2014 intern. All rights reserved.
//

#import "APAViewController.h"

@interface APAViewController ()

@end

@implementation APAViewController

- (APACalculator *)calculator {
    if (!calculator) {
        calculator = [[APACalculator alloc] init];
    }
    
    return calculator;
}

- (IBAction)operationPressed:(UIButton *)sender {
    if (userStillPressDigit) {
        [[self calculator] setOperand:[[display text] doubleValue]];
        userStillPressDigit = NO;
    }
    
    NSString *operation = [[sender titleLabel] text];
    double result = [[self calculator] perfromOperation:operation];
    [display setText: [NSString stringWithFormat:@"%g", result]];
    
}

- (IBAction)operandPressed:(UIButton *)sender {
    NSString *digit = [[sender titleLabel] text];
    
    if (userStillPressDigit) {
        [display setText: [[display text] stringByAppendingString:digit]];
    } else {
        [display setText:digit];
        userStillPressDigit = YES;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
