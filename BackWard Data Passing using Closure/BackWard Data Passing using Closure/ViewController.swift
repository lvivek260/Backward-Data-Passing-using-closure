//
//  ViewController.swift
//  BackWard Data Passing using Closure
//
//  Created by Admin on 28/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func nextPage(_ sender: UIButton) {
        let svc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        svc.dataFromSecondViewController = {
            (firstName,lastName) in
            self.firstName.text = firstName
            self.lastName.text = lastName
        }
        self.navigationController?.pushViewController(svc, animated: true)
    }
    
}

