//
//  ViewController.m
//  even_choices
//
//  Created by Lee Barney on 10/1/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)evenOrOdd:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *showIsEvenLabel;

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

- (IBAction)evenOrOdd:(id)sender {
    int aNumber = 5;
    int remainder = aNumber % 2;
    if(aNumber == 0){
        _showIsEvenLabel.text = @"0 is neither even nor odd.";
    }
    else if(remainder == 0){
        _showIsEvenLabel.text = [NSString stringWithFormat:@"%d is even.", aNumber];
    }
    else{
        _showIsEvenLabel.text = [NSString stringWithFormat:@"%d is odd.", aNumber];
    }
}
@end
