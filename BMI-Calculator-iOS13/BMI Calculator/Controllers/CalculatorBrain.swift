import UIKit

struct CalculatorBrain {
    
    
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight/(height*height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4979199171, green: 0.7790392041, blue: 1, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "All good", color: #colorLiteral(red: 0.4843789339, green: 0.9865567088, blue: 0.757386744, alpha: 1))
        } else  {
            bmi = BMI(value: bmiValue, advice: "Eat more Veggies", color: #colorLiteral(red: 1, green: 0.5510461926, blue: 0.5356072187, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
}
