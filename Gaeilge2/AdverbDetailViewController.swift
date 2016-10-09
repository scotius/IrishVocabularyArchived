//
//  AdverbDetailViewController.swift
//  Gaeilge2
//
//  Created by Scott on 8/30/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import UIKit

class AdverbDetailViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var englishLabel: UILabel!
  
   
    var  detailAdverb : Adverb? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = self.detailAdverb!.name
        self.englishLabel.text = self.detailAdverb!.eng
    }
    
}
