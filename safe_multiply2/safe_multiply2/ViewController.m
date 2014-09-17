//
//  ViewController.m
//  safe_multiply2
//
//  Created by Lee Barney on 9/17/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstNumberInput;
@property (weak, nonatomic) IBOutlet UITextField *secondNumberInput;
@property (weak, nonatomic) IBOutlet UILabel *productLabel;

@end

@implementation ViewController

- (long)multiply:(long)firstNumber by:(long)secondNumber{
    return firstNumber * secondNumber;
}
- (IBAction)multiplyThem:(id)sender {
    NSString *displayValue = nil;
    long firstNumber = _firstNumberInput.text.intValue;
    long secondNumber = _secondNumberInput.text.intValue;
    if (firstNumber != 0 && secondNumber != 0){
        long product = [self multiply:firstNumber by:secondNumber];
        displayValue = [NSString stringWithFormat:@"%ld",product];
    }
    else{
        displayValue = @"0 (Number oops??)";
    }
    _productLabel.text = displayValue;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
