//
//  ClickOnCellViewController.swift
//  CEP
//
//  Created by Rastislav Smolen on 06/01/2021.
//

import Foundation
import UIKit

class CellInformationViewController : UIViewController {
    
    @IBOutlet var userIdLabel: UILabel!
    @IBOutlet var idLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var completedLabel: UILabel!
    
    var userId = String()
    var id = String()
    var tile = String()
    var completed = String()
    override func viewWillAppear(_ animated: Bool) {
        
        userIdLabel.text = userId
        idLabel.text = id
        titleLabel.text = title
        completedLabel.text = completed
    }
}

