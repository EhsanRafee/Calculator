//
//  gpaviewcontroller.swift
//  Calculator
//
//  Created by Ehsan on 20/10/2022.
//

import UIKit

class gpaviewcontroller: UIViewController {
    @IBOutlet weak var txtObtQtyPoint: UITextField!
    @IBOutlet weak var txtCreditHour: UITextField!
    
    @IBOutlet weak var Output: UITextField!
    @IBAction func CalculateGPA(_ sender: Any) {
        
        
        let obtainqltypoints = Float(txtObtQtyPoint.text!)
        let cr_hour = Float(txtCreditHour.text!)
       let gpa = (obtainqltypoints! / cr_hour!)*4
//        Output.text = String(obtainqltypoints! / cr_hour!)
        Output.text="your gpa is \(gpa)"
    
        
    }
    @IBAction func Clear(_ sender: Any) {
        txtObtQtyPoint.text=" "
        txtCreditHour.text=" "
        Output.text=""
       
        
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
