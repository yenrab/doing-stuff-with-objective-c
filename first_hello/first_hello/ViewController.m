//
//  ViewController.m
//  first_hello
//
//  Created by Lee Barney on 9/17/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *showUserLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)showStuff:(id)sender {
    _showUserLabel.text = @"We are doing stuff with Objective-C!";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
