//
//  slidebar.swift
//  test2
//
//  Created by Startbluesoft on 29/11/16.
//  Copyright © 2016 Startbluesoft. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    var names = [String]()
    var identities = [String]()
    
    override func viewDidLoad() {
        
        names = ["Red", "Pink", "Green", "Blue"]
        identities = ["A","B", "C", "D"]
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = names[indexPath.row]
        
        return cell!
        
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
        
    }
    
    
}
