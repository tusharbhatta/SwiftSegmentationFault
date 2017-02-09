//
//  Machine.swift
//  SwiftSegFault
//
//  Created by Tushar Bhattacharyya on 09/02/17.
//  Copyright © 2017 IdeacrestSolutions. All rights reserved.
//

import Foundation


@objc protocol Machine {
    var name: String {get set}
}

@objc protocol Vehicle {
    var noOfWheels: Int {get set}
}

@objc protocol CarProtocol: Machine, Vehicle {
    
}
