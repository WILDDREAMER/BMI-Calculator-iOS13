//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by WILDDREAMER on 27/3/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi:BMI?
    var weight:Float = 100
    var height:Float = 1.5
    
    func calculateBmi() -> Float{
        return weight / pow(height, 2)
    }
    
    mutating func getBmiValue() {
        let value = calculateBmi()
        let stringedValue = String(format: "%.1f", value)
        if value < 18.5 {
            bmi = BMI(value: stringedValue, color: UIColor.blue  , advice: "Eat more pies!")
        } else if value < 25 {
            bmi = BMI(value: stringedValue, color: UIColor.green, advice: "Fit as a fiddle!")
        } else if value > 24.9{
            bmi = BMI(value: stringedValue, color: UIColor.red, advice: "Eat less pies!")
        }
    }
}
