//
//  File.swift
//  MyBMICalculator
//
//  Created by Yuliia Vorobei on 12.03.2024.
//

import UIKit

struct BMI {
    let breakpoint: Float
    let category: String
    let advice: String
    let color: UIColor
    
    init(breakpoint: Float, category: String, advice: String, color: UIColor) {
        self.breakpoint = breakpoint
        self.category = category
        self.advice = advice
        self.color = color
    }
}
