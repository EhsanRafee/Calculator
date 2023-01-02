//
//  salaryViewController.swift
//  Calculator
//
//  Created by Ehsan on 20/10/2022.
//

import UIKit

class salaryViewController: UIViewController {

    @IBOutlet weak var tbBasicSalary: UITextField!
    @IBOutlet weak var tbMedAllowance: UITextField!
    @IBOutlet weak var tbHouseAllowance: UITextField!
    @IBOutlet weak var tbTRavAllowance: UITextField!
    @IBOutlet weak var totSalary: UITextField!
    
    @IBOutlet weak var AnnualSalary: UITextField!
    
   
    @IBAction func CalculateSalary(_ sender: Any) {
        let bs = Int(tbBasicSalary.text!)
        let ma = Int(tbMedAllowance.text!)
        let ha = Int(tbHouseAllowance.text!)
        let ta = Int(tbTRavAllowance.text!)
        let total = (bs! + ma! + ha! + ta!)
       totSalary.text = "Total Salary = \(total)"
        let annual = total * 12
        AnnualSalary.text = "Your Annual Salary is = \(annual)"
        
        
        
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
