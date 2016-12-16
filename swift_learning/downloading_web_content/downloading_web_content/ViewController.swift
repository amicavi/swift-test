//
//  ViewController.swift
//  downloading_web_content
//
//  Created by Startbluesoft on 22/11/16.
//  Copyright © 2016 Startbluesoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // let url = URL(string: "https://www.stackoverflow.com")!
        
        // webView.loadRequest(URLRequest(url: url))
        
        // webView.loadHTMLString("<h2>Hello there!</h2>", baseURL: nil)
 
 
        
        if let url = URL(string: "https://www.stackoverflow.com") {
         
            let request = NSMutableURLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                
                data, response, error in
                
                if error != nil {
                    
                    print("error")
                    
                } else {
                    
                    if let unwrappedData = data {
                        
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        
                        print(dataString!)
                        
                    }
                    
                }
                
            }
            
            task.resume()
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

