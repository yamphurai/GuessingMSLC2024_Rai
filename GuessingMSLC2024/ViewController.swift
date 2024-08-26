//
//  ViewController.swift
//  GuessingMSLC2024
//
//  Created by Eric Cooper Larson on 8/26/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloWorldLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        helloWorldLabel.text = "Hello MSLC World"
    }


    @IBAction func changeText(_ sender: Any) {
        helloWorldLabel.text = "2024 Is Great!"
    }
}

