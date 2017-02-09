//
//  Car.swift
//  SwiftSegFault
//
//  Created by Tushar Bhattacharyya on 09/02/17.
//  Copyright © 2017 IdeacrestSolutions. All rights reserved.
//

import Foundation

class SedarCar: CarProtocol {
    var name: String = "Default Car Name"
    var noOfWheels: Int = 4
    
    init(name: String, wheels: Int = 4) {
        self.name = name
        self.noOfWheels = wheels
    }
}
