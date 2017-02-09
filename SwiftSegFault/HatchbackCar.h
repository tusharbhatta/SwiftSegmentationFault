//
//  HatchbackCar.h
//  SwiftSegFault
//
//  Created by Tushar Bhattacharyya on 09/02/17.
//  Copyright © 2017 IdeacrestSolutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CarProtocol;

@interface HatchbackCar : NSObject <CarProtocol>


- (instancetype)initWith:(NSString *)name wheels:(NSInteger)noOfWheels;

@end
