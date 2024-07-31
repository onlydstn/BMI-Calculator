//
//  main.swift
//  BMI Calculator
//
//  Created by Dustin Nuzzo on 7/31/24.
//

import Foundation

print("Lets calculate your BMI(Body Mass Index)")
print("First tell me, what is yout height?")

if let input = readLine() {
    let height = Double(input) ?? 0
    print("And now tell me, what is your weight?")
    
    if let input = readLine() {
        let weight = Double(input) ?? 0
        
        let myBMI = calcBMI(weight: weight, height: height)
        let myBMIString = String(format: "%.2f", ceil(myBMI*10)/10)
        
        
        switch myBMI {
        case 0..<18.5:
                print("Your BMI is \(myBMIString) and you are underweight.")
        case 18.5..<25:
            print("Your BMI is \(myBMIString) and you are normal weight.")
        case 25..<30:
            print("Your BMI is \(myBMIString) and you are overweight.")
        case 30..<40:
            print("Your BMI is \(myBMIString) and you are obese.")
        case 40..<50:
            print("Your BMI is \(myBMIString) and you are severely obese.")
        default:
            print("Your BMI is \(myBMIString) and you are extremely obese.")
        }
    }
}



