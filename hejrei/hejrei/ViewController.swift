//
//  ViewController.swift
//  hejrei
//
//  Created by nura on 11/14/19.
//  Copyright © 2019 nura. All rights reserved.
//

import UIKit
import MOLH
//control
class ViewController: UIViewController {
//View
    @IBOutlet weak var languagebutton: UIButton!
    @IBOutlet weak var numbertextfield: UITextField!
    @IBOutlet weak var resultlabel: UILabel!
//continue control
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        languagebutton.setTitle("langbutton".localized, for: .normal)
        
    }
    @IBAction func convertdate(_ sender: Any) {
        if numbertextfield.text != "" { let constant :Double = 33/32
        var hejreinumber = Double(numbertextfield.text! )! - 622
            hejreinumber = hejreinumber * constant
            let hn = Int(hejreinumber)
        resultlabel.text = "\(hn)"
        numbertextfield.resignFirstResponder()
        }}
    @IBAction func langpress(_ sender: UIButton) {
MOLH.setLanguageTo(MOLHLanguage.currentAppleLanguage() == "en" ? "ar" : "en")
MOLH.reset()
    
        
    }}
  

