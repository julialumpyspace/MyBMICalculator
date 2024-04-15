//
//  ViewController.swift
//  MyBMICalculator
//
//  Created by Yuliia Vorobei on 06.03.2024.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    let heightUnit = "cm"
    let weightUnit = "kg"
    let resultViewID = "goToResult"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func getDecimalStringValue(value: Float) -> String {
        return String(format: "%.1f", value)
    }

    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        let heightValue = getDecimalStringValue(value: heightSlider.value)
        heightValueLabel.text = heightValue + heightUnit
    }
    
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        let weightValue = getDecimalStringValue(value: weightSlider.value)
        weightValueLabel.text = weightValue + weightUnit
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: resultViewID, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == resultViewID {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.height = heightSlider.value
            destinationVC.weight = weightSlider.value
        }
    }
    
}

