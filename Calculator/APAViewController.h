//
//  APAViewController.h
//  Calculator
//
//  Created by intern on 7/10/14.
//  Copyright (c) 2014 intern. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APACalculator.h"

@interface APAViewController : UIViewController {
#warning Все Эти переменные нужно перенести в *.m файл, не стоит их показывать в *.h
    
#warning display - не лучшее имя для аутлета UILabel

    IBOutlet UILabel *display;
    APACalculator *calculator;
    BOOL userStillPressDigit;
}

-(IBAction)operandPressed:(UIButton *)sender;
-(IBAction)operationPressed:(UIButton *)sender;

@end
