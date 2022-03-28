//
//  BMI.swift
//  BMI Calculator
//
//  Created by WILDDREAMER on 27/3/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value:String
    let color:UIColor
    let advice:String
    
    func getValue() -> String {
        return value
    }
    func getColor() -> UIColor {
        return color
    }
    func getAdvice() -> String {
        return advice
    }
}
