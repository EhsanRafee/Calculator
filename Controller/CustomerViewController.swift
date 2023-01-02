//
//  CustomerViewController.swift
//  Calculator
//
//  Created by Ehsan on 22/12/2022.
//

import UIKit

class CustomerViewController: UIViewController {

    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phonenumber: UITextField!
    @IBOutlet weak var address: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BtnSave(_ sender: Any) {
        let api = APIWrapper()
        let customerinfo = Customer(Id: Int(id.text!)!, Name: name.text!, Phonenumber: phonenumber.text!, Address: address.text!)
        let json = try! JSONEncoder().encode(customerinfo)
        let response = api.postMethodCall(controllerName: "Customer", actionName: "SaveCustomers", httpBody: json)
        var message = ""
        if response.ResponseCode == 200 {
            message = response.ResponseMessage
        }else{
            message = response.ResponseMessage
        }
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default))
        present(alert, animated: true, completion: nil)
        
    }
    
   
}
