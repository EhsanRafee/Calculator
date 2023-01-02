//
//  GradeCalculatorController.swift
//  Calculator
//
//  Created by Ehsan on 20/10/2022.
//

import UIKit

class GradeCalculatorController: UIViewController {

    @IBOutlet weak var MathMarks: UITextField!
    @IBOutlet weak var EnglishMarks: UITextField!
    @IBOutlet weak var UrduMarks: UITextField!
    @IBOutlet weak var ComputerMarks: UITextField!
    @IBOutlet weak var PhysicsMarks: UITextField!
    @IBOutlet weak var Result: UITextField!
    
    func per() -> Float {
        let math = Int(MathMarks.text!)
        let eng = Int(EnglishMarks.text!)
        let urdu = Int(UrduMarks.text!)
        let computer = Int(ComputerMarks.text!)
        let physics = Int(PhysicsMarks.text!)
       let Total_marks = Int(500)
        let total_obtain_marks = (math!+eng!+urdu!+computer!+physics!)
    let percentage = Float((total_obtain_marks * 100) / Total_marks)
        return percentage
    }
    @IBAction func Calculatpercentage(_ sender: Any) {
        
        let res = per()
        Result.text = " \(res)"
//      Result.text = "YOUR PERCENTAGE IS : \(String((total_obtain_marks *        100) / Total_marks))"
        
        
    }
    @IBAction func CalculateGrade(_ sender: Any) {
        let perc = per()
        if perc >= 80
        {
            Result.text = "your grade is Equal to A"
        }
        else if perc >= 60 && perc <= 79
        {
            Result.text = "your grade is Equal to B"
        }
        else if perc >= 40 && perc <= 59
        {
            Result.text = "your grade is Equal to C"
        }
        else if perc < 40
        {
            Result.text = "your grade is Equal to f"
        }
        
        
        
        
        
       
    
        
        


        
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
