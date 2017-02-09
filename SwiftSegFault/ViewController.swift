//
//  ViewController.swift
//  SwiftSegFault
//
//  Created by Tushar Bhattacharyya on 09/02/17.
//  Copyright © 2017 IdeacrestSolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let hyundaiSantro = HatchbackCar("Huyndai Santro", wheels: 4)
//        let sedanCar = SedanCar(name: "Honda City")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

