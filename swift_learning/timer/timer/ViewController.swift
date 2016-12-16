//
//  ViewController.swift
//  timer
//
//  Created by Startbluesoft on 16/11/16.
//  Copyright © 2016 Startbluesoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var timer = Timer()
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func playButton(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.addTen), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        
        timer.invalidate()
        
    }
    
    @IBAction func plusTenButton(_ sender: Any) {
        
        addTen()
        
    }
    
    @IBAction func lessTenButton(_ sender: Any) {
        
        substractTen()
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        
        numberLabel.text = String(210)
        
    }
    
    func addTen() {
        
        let valueOfLabel = Int(numberLabel.text!)
        
        numberLabel.text = String(valueOfLabel! + 10)
        
    }
    
    func substractTen() {
        
        let valueOfLabel = Int(numberLabel.text!)
        
        numberLabel.text = String(valueOfLabel! - 10)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

