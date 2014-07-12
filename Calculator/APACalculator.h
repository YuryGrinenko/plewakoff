//
//  APACalculator.h
//  Calculator
//
//  Created by intern on 7/10/14.
//  Copyright (c) 2014 intern. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APACalculator : NSObject {
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
}

- (void)setOperand:(double)aDouble;
- (double)perfromOperation:(NSString *)operation;

@end
