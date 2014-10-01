//
//  ViewController.m
//  fraction_choices
//
//  Created by Lee Barney on 10/1/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *showIsFractionalLabel;
- (IBAction)checkFractional:(id)sender;

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

- (IBAction)checkFractional:(id)sender {
    double aNumber = -10.25;
    if(aNumber > 0 && aNumber < 1){
        _showIsFractionalLabel.text = [NSString stringWithFormat:@"%f is only fractional",aNumber];
    }
    else if(aNumber < 0 && aNumber > -1){
        _showIsFractionalLabel.text = [NSString stringWithFormat:@"%f is only fractional",aNumber];
    }
    else{
        _showIsFractionalLabel.text = [NSString stringWithFormat:@"%f has a whole number component.",aNumber];
    }
}
@end
