//
//  ViewController.m
//  write_to_file
//
//  Created by Lee Barney on 10/7/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

#import "ViewController.h"
#import "ClothingCustomer.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameInput;
@property (weak, nonatomic) IBOutlet UITextField *ageInput;
@property (weak, nonatomic) IBOutlet UITextField *inseamInput;
@property (weak, nonatomic) IBOutlet UITextView *customerDisplay;
@property (strong, nonatomic) NSMutableArray *customers;

- (IBAction)createCustomer:(id)sender;
- (IBAction)writeCustomersToFile:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _customers = [NSMutableArray array];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createCustomer:(id)sender {
    NSString *aName = _nameInput.text;
    int anAge = _ageInput.text.intValue;
    double anInseam = _inseamInput.text.doubleValue;
    ClothingCustomer *aCustomer = [[ClothingCustomer alloc] init:aName withAge:anAge andInseam:anInseam];
    [_customers addObject:aCustomer];
    _customerDisplay.text = [_customers description];
}

- (IBAction)writeCustomersToFile:(id)sender {
    NSString *documentsDirectoryPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *datapath = [documentsDirectoryPath stringByAppendingPathComponent:@"customer.data"];
    NSString *customersString = @"";
    for (ClothingCustomer *aCustomer in _customers) {
        NSString * aCustomerStorageString = [NSString stringWithFormat:@"%@\n",[aCustomer storageString]];
        customersString = [customersString stringByAppendingString:aCustomerStorageString];
    }
    [customersString writeToFile:datapath atomically:YES encoding:NSUTF8StringEncoding error:nil];
}
@end
