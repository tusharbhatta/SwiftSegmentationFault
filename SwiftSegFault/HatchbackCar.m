//
//  HatchbackCar.m
//  SwiftSegFault
//
//  Created by Tushar Bhattacharyya on 09/02/17.
//  Copyright © 2017 IdeacrestSolutions. All rights reserved.
//

#import "SwiftSegFault-Swift.h"
#import "HatchbackCar.h"


@implementation HatchbackCar
@synthesize name;
@synthesize noOfWheels;

- (instancetype)initWith:(NSString *)name wheels:(NSInteger)noOfWheels
{
    self = [super init];
    self.name = name;
    self.noOfWheels = noOfWheels;
    return self;
}

@end
