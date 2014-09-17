//
//  ViewController.m
//  first_from_user
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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)multiplyThem:(id)sender {
    long aNumber = _firstNumberInput.text.intValue;
    long anotherNumber = _secondNumberInput.text.intValue;
    long product = [self multiply:aNumber by:anotherNumber];
    NSString *result = [NSString stringWithFormat:@"= %ld", product];
    _productLabel.text = result;
}

- (long)multiply:(long)firstNumber by:(long)secondNumber{
    return firstNumber * secondNumber;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
