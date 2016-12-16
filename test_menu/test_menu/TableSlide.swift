//
//  TableSlide.swift
//  test_menu
//
//  Created by Startbluesoft on 30/11/16.
//  Copyright © 2016 Startbluesoft. All rights reserved.
//

import Foundation
import UIKit

class SlideTable: UITableViewController {
    
    var menuItems = [String]()
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return menuItems.count
        
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = menuItems[indexPath.row]
        
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        menuItems = ["Inicio", "Citas", "Citas por realizar"]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

    
}
