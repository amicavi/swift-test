//
//  ViewController.swift
//  data_storage
//
//  Created by Startbluesoft on 17/11/16.
//  Copyright © 2016 Startbluesoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneInput: UITextField!
    
    @IBAction func sendButton(_ sender: Any) {
        
        UserDefaults.standard.set(phoneInput.text, forKey: "phone")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let phoneObject = UserDefaults.standard.object(forKey: "phone")
        
        if let phone = phoneObject as? String {
            
            phoneInput.text = phone

        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

