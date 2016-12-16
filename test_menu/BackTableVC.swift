//
//  BackTableVC.swift
//  test_menu
//
//  Created by Startbluesoft on 28/11/16.
//  Copyright © 2016 Startbluesoft. All rights reserved.
//

import Foundation

class BackTableVC: UITableViewController {
    
    var tableMenu = [String]()
    
    override func viewDidLoad() {
        tableMenu = ["Inicio", "Citas", "Citas por realizar"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableMenu.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = tableMenu[indexPath.row]
        
        return cell
        
    }
    
}
