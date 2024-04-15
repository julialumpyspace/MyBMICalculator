//
//  BMIBrain.swift
//  MyBMICalculator
//
//  Created by Yuliia Vorobei on 12.03.2024.
//

import Foundation

struct BMIBrain {
    var bmiValue: Float = 0.0
    
    let bmi = [
        BMI(
            breakpoint: 18.5,
            category: "Underweight",
            advice: "Eat moooooore pies!",
            color: #colorLiteral(red: 0.8477737308, green: 0.6525186896, blue: 0.4823529412, alpha: 1)),
        BMI(
            breakpoint: 24.9, 
            category: "Normal",
            advice: "Nice! You're OK!",
            color: #colorLiteral(red: 0.4549019608, green: 0.431372549, blue: 0.1764705882, alpha: 1)),
        BMI(
            breakpoint: 29.9,
            category: "Pre-obesity",
            advice: "Eat less pies!",
            color: #colorLiteral(red: 0.7176470588, green: 0.4352941176, blue: 0.1843137255, alpha: 1)),
        BMI(
            breakpoint: 34.9,
            category: "Obesity Class I",
            advice: "Eat less pies, please!",
            color: #colorLiteral(red: 0.568627451, green: 0.2705882353, blue: 0.1529411765, alpha: 1)),
        BMI(
            breakpoint: 39.9,
            category: "Obesity Class II",
            advice: "Eat less pies, really!",
            color: #colorLiteral(red: 0.6470588235, green: 0.1490196078, blue: 0.1333333333, alpha: 1)),
        BMI(
            breakpoint: 5000000,
            category: "Obesity Class III",
            advice: "Eat less pies or you will die!",
            color: #colorLiteral(red: 0.8705882353, green: 0.2039215686, blue: 0.1764705882, alpha: 1))
    ]
    
    mutating func culculateBMI(_ height: Float, _ weight: Float) {
        let heightValue = height / 100
        bmiValue = weight / pow(heightValue, 2)
    }
    
    func getBMIStringValue() -> String {
        return String(format: "%.1f", bmiValue)
    }
    
    func getBMI() -> BMI {
        var properBMI = bmi[0]
        for bmiItem in bmi {
            if bmiItem.breakpoint > bmiValue {
                properBMI = bmiItem
                break
            }
        }
        
        return properBMI
    }
}
