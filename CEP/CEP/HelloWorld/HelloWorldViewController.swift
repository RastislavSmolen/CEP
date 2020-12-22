//
//  ViewController.swift
//  CEP
//
//  Created by Rastislav Smolen on 11/12/2020.
//

import UIKit
import Rswift

class HelloWorldViewController: UIViewController {
    
    @IBOutlet var HelloWorldTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        HelloWorldTitleLabel.text = R.string.helloWorld.helloWorld()
    }
}

