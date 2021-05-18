//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Haley Lai on 5/18/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
struct CalculatorBrain {
    var bmiValue = "0.0"
    
    mutating func calculateBMI(_ height:Float, _ weight:Float) {
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%.1f", bmi)
    }
    
    func getBMIValue() -> String {
        return bmiValue
    }
}
