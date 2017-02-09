# SwiftSegmentationFault
An example iOS app to illustrate Swift compiler issue when using swift protocols with Objective-C class.
It also causes Xcode editor to display a message  "An internal error occurred. Source editor functionality is limited. Attempting to restore..."

This repo is just to illustrate the error and to help finding proper solution as I've spend more than a day on this with various techniques available but failed.

# Configuration:

Xcode 8.2.1 with Swift 3

# Error Log:

`Command failed due to signal: Segmentation fault: 11`

1.	While type-checking 'viewDidLoad' at /Users/tushar/Documents/projects/iOS/SwiftSegFault/SwiftSegFault/ViewController.swift:13:14
2.	While type-checking declaration 0x7fdde32f1700 at /Users/tushar/Documents/projects/iOS/SwiftSegFault/SwiftSegFault/ViewController.swift:20:9
3.	While type-checking expression at [/Users/tushar/Documents/projects/iOS/SwiftSegFault/SwiftSegFault/ViewController.swift:20:29 - line:20:75] RangeText="HatchbackCar(name: "Huyndai Santro", wheels: 4)"
4.	/Users/tushar/Documents/projects/iOS/SwiftSegFault/SwiftSegFault/HatchbackCar.h:13:12: importing 'HatchbackCar'

# What's happening 

Swift Protocols:

@objc protocol Machine {
    var name: String {get set}
}

@objc protocol Vehicle {
    var noOfWheels: Int {get set}
}

@objc protocol CarProtocol: Machine, Vehicle {
    
}


Objective C implementation:

# Sample.h FILE
#import <Foundation/Foundation.h>

@protocol CarProtocol;

@interface HatchbackCar : NSObject <CarProtocol>


- (instancetype)initWith:(NSString *)name wheels:(NSInteger)noOfWheels;

@end

# Sample.m FILE

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


# Swift Class where these are actually used :

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()        
        let hyundaiSantro = HatchbackCar(name: "Huyndai Santro", wheels: 4)
    }
}


# NOTE: This repo is just to illustrate the current Swift compiler error and to help find proper solution as I've spend more than a day on this with various techniques available but failed.
