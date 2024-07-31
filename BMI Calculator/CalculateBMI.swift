//
//  CalculateBMI.swift
//  BMI Calculator
//
//  Created by Dustin Nuzzo on 7/31/24.
//

import Foundation

func calcBMI(weight: Double, height: Double) -> Double {
    let bmi = weight / (height / 100 * height / 100)
    return bmi
}
