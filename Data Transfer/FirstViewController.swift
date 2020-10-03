//
//  ViewController.swift
//  Data Transfer
//
//  Created by be RUPU on 3/8/20.
//  Copyright © 2020 be RUPU. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, DataReciever {
    
    
    
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func colorChange(_ sender: Any) {
        view.backgroundColor = UIColor.systemPink
    }
    
    @IBAction func sendData(_ sender: Any) {
        
        performSegue(withIdentifier: "DataSender", sender: self)
        textField.text = ""
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DataSender" {
            
            let secondVC   = segue.destination as? SecondViewController
            secondVC?.data = textField.text!
            secondVC?.delegate = self
            
        }
    }
    
    func sentData(data: String) {
        label.text = data
    }
    
}

