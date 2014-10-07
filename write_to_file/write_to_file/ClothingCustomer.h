//
//  ClothingCustomer.h
//  read_from_file
//
//  Created by Lee Barney on 10/3/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClothingCustomer : NSObject

-(id)init:(NSString*)aName withAge:(int)anAge andInseam:(double)anInseam;
-(NSString*)description;
-(NSString*)storageString;
@end
