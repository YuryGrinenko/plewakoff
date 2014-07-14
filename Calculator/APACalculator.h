//
//  APACalculator.h
//  Calculator
//
//  Created by intern on 7/10/14.
//  Copyright (c) 2014 intern. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APACalculator : NSObject {
#warning Это все нужно перенести в *.m файл
    
#warning Имена ivar'ов должны начинаться на "_", то есть не operand, а _operand. Вообще лучше использовать @property

    double operand;
    NSString *waitingOperation;
    double waitingOperand;
}

- (void)setOperand:(double)aDouble;
- (double)perfromOperation:(NSString *)operation;

@end
