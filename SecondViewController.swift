//
//  SecondViewController.swift
//  Data Transfer
//
//  Created by be RUPU on 3/8/20.
//  Copyright © 2020 be RUPU. All rights reserved.
//

import UIKit

protocol DataReciever {
    func sentData(data: String)
}

class SecondViewController: UIViewController {
    
    var delegate : DataReciever?
    
    var data = ""

    
    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = data
    }
    @IBAction func colorChange(_ sender: Any) {
        view.backgroundColor = UIColor.yellow
    }
    
    @IBAction func sendBack(_ sender: Any) {
        delegate?.sentData(data: textField.text!)
        dismiss(animated: true, completion: nil)
        textField.text = ""
    }
    
}
