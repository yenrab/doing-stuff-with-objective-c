//
//  ViewController.m
//  bad_group
//
//  Created by Lee Barney on 10/1/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)crashIt:(id)sender {
    int badIndex = 7;
    double numbers[7] = {0.25, 11.003, -2.14, 0.14, 20001.3, -.000001, -10.0};
    numbers[badIndex] = 45.9;
    
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
