//
//  ViewController.swift
//  tictoctoe_game
//
//  Created by Startbluesoft on 24/11/16.
//  Copyright © 2016 Startbluesoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLeftButton: UIButton!
    @IBOutlet weak var topCenterButton: UIButton!
    @IBOutlet weak var topRightButton: UIButton!
    @IBOutlet weak var middleLeftButton: UIButton!
    @IBOutlet weak var middleCenterButton: UIButton!
    @IBOutlet weak var middleRightButton: UIButton!
    @IBOutlet weak var bottomLeftButton: UIButton!
    @IBOutlet weak var bottomCenterButton: UIButton!
    @IBOutlet weak var bottomRightButton: UIButton!
    
    var iterator = 0
    let images = ["cross.png","nought.png"]
    
    
    func changeIterator() {
        if iterator == 0 {
            
            iterator = 1
            
        } else {
            
            iterator = 0
            
        }
    }
    
    @IBAction func topLeft(_ sender: Any) {
        
        let image = UIImage(named: images[iterator])
        topLeftButton.setImage(image, for: .normal)
        
        changeIterator()
        
    }

    @IBAction func topCenter(_ sender: Any) {
        
        let image = UIImage(named: images[iterator])
        topCenterButton.setImage(image, for: .normal)
        
        changeIterator()
        
    }
    
    @IBAction func topRight(_ sender: Any) {
        
        let image = UIImage(named: images[iterator])
        topRightButton.setImage(image, for: .normal)
        
        changeIterator()
        
    }

    @IBAction func middleLeft(_ sender: Any) {
        
        let image = UIImage(named: images[iterator])
        middleLeftButton.setImage(image, for: .normal)
        
        changeIterator()
        
    }
    
    @IBAction func middleCenter(_ sender: Any) {
        
        let image = UIImage(named: images[iterator])
        middleCenterButton.setImage(image, for: .normal)
        
        changeIterator()
        
    }
    
    @IBAction func middleRight(_ sender: Any) {
        
        let image = UIImage(named: images[iterator])
        middleRightButton.setImage(image, for: .normal)
        
        changeIterator()
        
    }

    @IBAction func bottomLeft(_ sender: Any) {
        
        let image = UIImage(named: images[iterator])
        bottomLeftButton.setImage(image, for: .normal)
        
        changeIterator()
        
    }
    
    @IBAction func bottomCenter(_ sender: Any) {
        
        let image = UIImage(named: images[iterator])
        bottomCenterButton.setImage(image, for: .normal)
        
        changeIterator()
        
    }
    
    @IBAction func bottomRight(_ sender: Any) {
        
        let image = UIImage(named: images[iterator])
        bottomRightButton.setImage(image, for: .normal)
        
        changeIterator()
        
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

