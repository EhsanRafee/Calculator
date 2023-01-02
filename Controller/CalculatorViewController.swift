//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Ehsan on 15/12/2022.
//

import UIKit

class CalculatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         getUserData()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var fnum: UITextField!
    @IBOutlet weak var fSecnum: UITextField!
    @IBOutlet weak var result: UITextField!
    
    func getUserData() {
        let api = APIWrapper()
       let response = api.getMethodCall(controllerName:"Math",actionName: "getuser")
        if response.ResponseCode == 200{
        let user = try! JSONDecoder().decode(UserInfo.self, from: response.ResponseData!)
        print("id:\(user.id),name:\(user.name),password:\(user.password),email:\(user.email)")
        }
    }
    

    @IBAction func Add(_ sender: Any) {
        let num1 = fnum.text
        let num2 = fSecnum.text
        let api = APIWrapper()
        let response = api.getMethodCall(controllerName: "Math", actionName: "GetSum?n1=\(num1!)&n2=\(num2!)")
        if response.ResponseCode == 200 {
            result.text = response.ResponseMessage
        }
        else
        {
            let alert = UIAlertController(title: "Alert", message: response.ResponseMessage, preferredStyle: .alert)
            print(response.ResponseMessage)
        }
    }
    @IBAction func minus(_ sender: Any) {
    }
    @IBAction func multiply(_ sender: Any) {
    }
    @IBAction func Divide(_ sender: Any) {
        let num1 = fnum.text
        let num2 = fSecnum.text
        let api = APIWrapper()
        let response = api.getMethodCall(controllerName: "Math", actionName: "divide?n1=\(num1!)&n2=\(num2!)")
        if response.ResponseCode == 200 {
            result.text = response.ResponseMessage
        }
        else
        {
            let alert = UIAlertController(title: "Alert", message: response.ResponseMessage, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
            print(response.ResponseMessage)
        }
    }
   
    
}
