//
//  ViewController.swift
//  TableView
//
//  Created by Tatiana Looby on 21/01/2017.
//  Copyright © 2017 Tatiana Looby. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var numberArray = ["0", "1", "2", "3", "4" , "5"]
    
    @IBOutlet weak var tableViewColumn: UITableView!
    
    @IBOutlet weak var tableView1: UITableView!
    
    @IBOutlet weak var tableView2: UITableView!

    @IBOutlet weak var tableView3: UITableView!
    
    @IBOutlet weak var tableView4: UITableView!
    
    @IBOutlet weak var tableView5: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell?
        
        if tableView == self.tableViewColumn {
            cell = tableViewColumn.dequeueReusableCell(withIdentifier: "CellColumn", for: indexPath)
            cell?.textLabel?.text = numberArray[indexPath.row]
            
        }
        
        return cell!
    }

}

