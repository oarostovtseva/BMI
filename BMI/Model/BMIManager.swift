//
//  BMIManager.swift
//  BMI
//
//  Created by Olena Rostovtseva on 23.04.2020.
//  Copyright © 2020 orost. All rights reserved.
//

import UIKit

struct BMIManager {
    var bmi: BMI?

    func getBMIValueText() -> String {
        return String(format: "%.2f", bmi?.value ?? "0.0")
    }

    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }

    func getBackgroundColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
    }

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue >= 18.5, bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Everything is OK", color: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Wow, you are fat!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
}
