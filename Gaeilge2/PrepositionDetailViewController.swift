//
//  PrepositionDetailViewController.swift
//  Gaeilge2
//
//  Created by Scott on 8/30/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import UIKit

class PrepositionDetailViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var englishLabel: UILabel!
    
    
    var  detailPreposition : Preposition? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = self.detailPreposition!.name
        self.englishLabel.text = self.detailPreposition!.eng
}

}