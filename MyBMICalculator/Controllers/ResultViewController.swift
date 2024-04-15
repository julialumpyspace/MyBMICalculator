//
//  ResultViewController.swift
//  MyBMICalculator
//
//  Created by Yuliia Vorobei on 12.03.2024.
//

import UIKit

class ResultViewController: UIViewController {
    var height: Float = 0.0
    var weight: Float = 0.0
    var bmiBrain = BMIBrain()
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var bmiCategoryLabel: UILabel!
    @IBOutlet weak var bmiAdviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiBrain.culculateBMI(height, weight)
        let bmi = bmiBrain.getBMI()

        bmiLabel.text = bmiBrain.getBMIStringValue()
        bmiLabel.textColor = bmi.color
        bmiCategoryLabel.text = bmi.category.uppercased()
        bmiCategoryLabel.textColor = bmi.color
        bmiAdviceLabel.text = bmi.advice.uppercased()
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
