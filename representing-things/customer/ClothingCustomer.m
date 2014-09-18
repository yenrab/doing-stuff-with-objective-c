//
//  Customer.m
//  customer
//
//  Created by Lee Barney on 9/18/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

#import "ClothingCustomer.h"

@implementation ClothingCustomer
@synthesize name;
@synthesize age;
@synthesize inseam;

-(id)init:(NSString*)aName withAge:(int)anAge andInseam:(double)aLength {
    if ( self = [super init] ) {
        name = aName;
        age = anAge;
        inseam = aLength;
        _isActive = YES;
        _activityChangeDate = [NSDate date];
    }
    return self;
}

-(void) updateIsActive:(BOOL)activeFlag onDate:(NSDate*)theDate{
    _isActive = activeFlag;
    _activityChangeDate = theDate;
}

@end
