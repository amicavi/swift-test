//
//  ViewController.swift
//  animations
//
//  Created by Startbluesoft on 24/11/16.
//  Copyright © 2016 Startbluesoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func fadeIn(_ sender: Any) {
        
        image.alpha = 0
        
        UIView.animate(withDuration: 2, animations: {
            
            self.image.alpha = 1
            
        })
        
    }
    
    @IBAction func SlideIn(_ sender: Any) {
        
        image.center = CGPoint(x: image.center.x - 500, y: image.center.y)
        
        UIView.animate(withDuration: 1, animations: {
        
            self.image.center = CGPoint(x: self.image.center.x + 500, y: self.image.center.y)
            
        })
        
    }
    
    @IBAction func grow(_ sender: Any) {
        
        image.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        UIView.animate(withDuration: 1, animations: {
            
            self.image.frame = CGRect(x: 0, y: 0, width: 350, height: 611)
        
        })
        
    }
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var button: UIButton!
    
    var counter = 0
    
    var timer = Timer()
    
    var isAnimating = false
    
    func animation(){
        
        image.image = UIImage(named: "frame_\(counter)_delay-0.06s.gif")
        
        counter += 1
        
        if counter == 14 {
            
            counter = 0
            
        }
        
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        if isAnimating {
            
            timer.invalidate()
            button.setTitle("START", for: [])
            isAnimating = false
            
        } else {
            
            timer = Timer.scheduledTimer(timeInterval: 0.06, target: self, selector: #selector(ViewController.animation), userInfo: nil, repeats: true)
            
            button.setTitle("STOP", for: [])
            
            isAnimating = true
        }
        
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

