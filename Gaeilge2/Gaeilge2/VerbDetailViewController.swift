//
//  VerbDetailViewController.swift
//  Gaeilge2
//
//  Created by Scott on 8/29/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import UIKit

class VerbDetailViewController: UIViewController, UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
   
    
    var detailVerbParts : [String] = []
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
      
        
      
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.detailVerbParts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = detailVerbParts[(indexPath as NSIndexPath).row]
        
        return cell
    }
    
   

}
