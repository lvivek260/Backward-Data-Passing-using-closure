//
//  SecondViewController.swift
//  BackWard Data Passing using Closure
//
//  Created by Admin on 28/01/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    var firstName:String?
    var lastName:String?
    var dataFromSecondViewController : ((String ,String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    func getData(){
        if(firstNameTextField.text!.isEmpty || lastNameTextField.text!.isEmpty){
            print("Empty TextField")
        }
        else{
            firstName = firstNameTextField.text
            lastName = lastNameTextField.text
        }
    }
    @IBAction func passData(_ sender: UIButton) {
        guard let dataOnSvc = dataFromSecondViewController else { return }
        getData()
        dataOnSvc(firstName!, lastName!)
        navigationController?.popViewController(animated: true)
    }
    
}
