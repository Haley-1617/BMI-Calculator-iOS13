//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Haley Lai on 5/18/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(_ height:Float, _ weight:Float) {
        let bmiValue = weight / pow(height, 2)
        var adviceValue = ""
        var bmiColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        switch bmiValue {
        case 0..<18.5:
            adviceValue = "Eat more snacks"
            bmiColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        case 18.5..<24.9:
            adviceValue = "You're in good shape"
            bmiColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        default:
            adviceValue = "Eat less"
        }
        print(adviceValue)
        bmi = BMI(value: bmiValue, advice: adviceValue, color: bmiColor)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No comment"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
