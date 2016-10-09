//
//  AdjectiveDetailViewController.swift
//  Gaeilge2
//
//  Created by Scott on 8/30/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import UIKit

class AdjectiveDetailViewController: UIViewController {
    
   
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var englishLabel: UILabel!
    var  detailAdjective : Adjective? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = self.detailAdjective!.name
        self.englishLabel.text = self.detailAdjective!.eng
    }
    
}

