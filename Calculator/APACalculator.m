//
//  APACalculator.m
//  Calculator
//
//  Created by intern on 7/10/14.
//  Copyright (c) 2014 intern. All rights reserved.
//

#import "APACalculator.h"

@implementation APACalculator


- (void) performWaitingOperation {
    if ([@"+" isEqual:waitingOperation]) {
        operand = waitingOperand + operand;
    } else if ([@"-" isEqual:waitingOperation]) {
        operand = waitingOperand - operand;
    } else if ([@"*" isEqual:waitingOperation]) {
        operand = waitingOperand * operand;
    } else if ([@"/" isEqual:waitingOperation]) {
        if (operand) {
            operand = waitingOperand / operand;
        }
    }
}

-(void)setOperand:(double)aDouble {
    operand = aDouble;
}

- (double) perfromOperation:(NSString *)operation {
    if ([operation isEqual:@"sqrt"]) {
        operand = sqrt(operand);
    } else {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    
    return operand;
}

@end
