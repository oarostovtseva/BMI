//
//  ViewController.swift
//  BMI
//
//  Created by Olena Rostovtseva on 18.04.2020.
//  Copyright © 2020 orost. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    var bmiManager = BMIManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightChanged(_ slider: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", slider.value))m"
    }
    
    @IBAction func weightChanged(_ slider: UISlider) {
        weightLabel.text = "\(String(format: "%.2f", slider.value))Kg"
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        bmiManager.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValueText = bmiManager.getBMIValueText()
            destinationVC.advice = bmiManager.getAdvice()
            destinationVC.backgroudColor = bmiManager.getBackgroundColor()
        }
    }
}
