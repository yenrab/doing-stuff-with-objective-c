//
//  Customer.h
//  customer
//
//  Created by Lee Barney on 9/18/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClothingCustomer : NSObject

@property (strong, nonatomic)NSString* name;
@property (readwrite)int age;
@property (readwrite)double inseam;
@property (readwrite)BOOL isActive;
@property (readwrite)NSDate* activityChangeDate;


-(id)init:(NSString*)aName withAge:(int)anAge andInseam:(double)aLength;
-(void) updateIsActive:(BOOL)activeFlag onDate:(NSDate*)theDate;


@end
