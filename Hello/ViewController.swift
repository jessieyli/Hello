//
//  ViewController.swift
//  Hello
//
//  Created by Li, Jessica on 1/25/20.
//  Copyright © 2020 Jessie Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    var textColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor
        textColor = textLabel.textColor
    }

    @IBAction func didTapButton(_ sender: Any) {
        print("Hello")
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.white
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        // textLabel.text = "Goodbye..."
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Jessie!"
        view.backgroundColor = backgroundColor
        textLabel.textColor = textColor
    }
}

