//
//  BillCalculatorController.swift
//  Calculator
//
//  Created by Ehsan on 20/10/2022.
//

import UIKit

class BillCalculatorController: UIViewController {

    @IBOutlet weak var tbConsumedunit: UITextField!
    @IBOutlet weak var tbEnterunit: UITextField!
    @IBAction func btnCalculate(_ sender: Any) {
        let consumedunit = Float(tbConsumedunit.text!)
        let enterunit = Float(tbEnterunit.text!)
        let sum = (consumedunit! * enterunit!)
        tbTotalBill.text = "total bill  = \(sum)"
//      tbTotalBill.text = String(consumedunit!*enterunit!)
    }
    @IBAction func btnClear(_ sender: Any) {
        tbConsumedunit.text = " "
        tbEnterunit.text = " "
        tbTotalBill.text = " "
    }
    @IBOutlet weak var tbTotalBill: UITextField!
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
