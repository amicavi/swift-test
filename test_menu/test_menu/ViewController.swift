//
//  ViewController.swift
//  test_menu
//
//  Created by Startbluesoft on 28/11/16.
//  Copyright © 2016 Startbluesoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var open: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        open.target = self.revealViewController()
        open.action = #selector(SWRevealViewController.revealToggle(_:))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

