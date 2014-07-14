//
//  APACalculator.m
//  Calculator
//
//  Created by intern on 7/10/14.
//  Copyright (c) 2014 intern. All rights reserved.
//

#import "APACalculator.h"

@implementation APACalculator

#warning Такая логика позволяет выполнить последовательность "8 + -" и результат окажется 16,
#warning в требованиях говорилось о том, что нельзя вводить две операции подряд

- (void) performWaitingOperation {
#warning Вынеси знаки операций в отдельное перечисление (enum)
    
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
#warning Этот код никогда не выполняется =)
        operand = sqrt(operand);
    } else {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    
    return operand;
}

@end
