//
//  TableViewController.swift
//  PropertyList
//
//  Created by siddharth on 19/12/18.
//  Copyright © 2018 clarionTechnologies. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var tableData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "TableData", ofType: "plist")!
        let dict = NSDictionary(contentsOfFile: path)
        
        tableData = dict!.object(forKey: "AppleDevice") as! [String]
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UITableViewCell
        cell.textLabel?.text = tableData[indexPath.row]
        return cell
    }

}
