//
//  ViewController.swift
//  CEP
//
//  Created by Rastislav Smolen on 11/12/2020.
//

import UIKit
import Rswift

class HelloWorldViewController: UIViewController {
    
    @IBOutlet private var helloWorldTitleLabel: UILabel!
    private var helloWorldVM : HelloWorldViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    
    }
    func setupView(){
        helloWorldVM = HelloWorldViewModel()
        populateHelloWorldLabel()
        helloWorldVM.grabDataFromJsonModel()
        
    }
    func populateHelloWorldLabel() {
        helloWorldTitleLabel.text = helloWorldVM.helloWorldTitleLabel
    }
}

