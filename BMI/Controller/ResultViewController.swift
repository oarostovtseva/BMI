//
//  ResultViewController.swift
//  BMI
//
//  Created by Olena Rostovtseva on 22.04.2020.
//  Copyright © 2020 orost. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var resultBMILabel: UILabel!
    @IBOutlet weak var adviceText: UILabel!
    
    var bmiValueText = ""
    var backgroudColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
    var advice = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        resultBMILabel.text = bmiValueText
        adviceText.text = advice
        view.backgroundColor = backgroudColor
    }

    @IBAction func recalculatePressed(_ sender: UILabel) {
        self.dismiss(animated: true, completion: nil)
    }
}
