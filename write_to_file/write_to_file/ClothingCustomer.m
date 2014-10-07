//
//  ClothingCustomer.m
//  read_from_file
//
//  Created by Lee Barney on 10/3/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

#import "ClothingCustomer.h"

@interface ClothingCustomer ()
@property (strong, nonatomic)NSString *name;
@property (readwrite)int age;
@property (readwrite)double inseam;


@end

@implementation ClothingCustomer

@synthesize name;
@synthesize age;
@synthesize inseam;

-(id)init:(NSString*)aName withAge:(int)anAge andInseam:(double)anInseam{
    if ( self = [super init] ) {
        name = aName;
        age = anAge;
        inseam = anInseam;
    }
    return self;
}

-(NSString*)description{
    return [NSString stringWithFormat:@"name: %@ age: %d inseam: %f",name, age, inseam];
}

-(NSString*)storageString{
    return [NSString stringWithFormat:@"%@ %d %f",name, age, inseam];
}

@end
