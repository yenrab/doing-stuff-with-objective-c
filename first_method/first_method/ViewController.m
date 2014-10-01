//
//  ViewController.m
//  first_method
//
//  Created by Lee Barney on 10/1/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *showUserLabel;
- (IBAction)multiplyThem:(id)sender;
- (int)multiply:(int)firstNumber by:(int)secondNumber;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)multiplyThem:(id)sender {
    int product = [self multiply:3 by:4];
    _showUserLabel.text = [NSString stringWithFormat:@"3 * 4 = %d",product];
}

- (int)multiply:(int)firstNumber by:(int)secondNumber{
    return firstNumber * secondNumber;
}
@end
