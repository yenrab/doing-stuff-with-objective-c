//
//  ViewController.m
//  group_loop
//
//  Created by Lee Barney on 10/3/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *evaluationDisplay;
- (IBAction)checkDoublesGroup:(id)sender;

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

- (IBAction)checkDoublesGroup:(id)sender {
    NSArray *numbers = @[@0.25, @11.003, @-2.14, @0.14, @20001.3, @-0.000001, @-10.0];
    for(int i = 0; i < 7; i++){
        NSNumber *aNumber = numbers[i];
        NSString *currentText = _evaluationDisplay.text;
        double primitiveValue = aNumber.doubleValue;
        if( (primitiveValue > 0 && primitiveValue < 1) || (primitiveValue < 0 && primitiveValue > -1) ) {
            _evaluationDisplay.text = [NSString stringWithFormat:@"%@ %f is fractional.\n", currentText, primitiveValue];
        }
        else{
            _evaluationDisplay.text = [NSString stringWithFormat:@"%@ %f has a whole number component.\n",currentText, primitiveValue];
        }
    }
}
@end
