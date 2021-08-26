//
//  ViewController.swift
//  HiApp
//
//  Created by Kasuvojula,Akhil on 8/26/21.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func buttondisplay(_ sender: UIButton) {
        var ipText = inputText.text!
        display.text = "Hello, \(ipText)!"
    }
    
}

