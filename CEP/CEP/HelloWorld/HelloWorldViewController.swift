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
    private var net : Networking!

    override func viewDidLoad() {
        super.viewDidLoad()
        net = Networking()
        if let localData = Networking.readLocalFile(fileName: "Accounts") {
            net.parseJson(jsonData: localData)
        }
        setupView()
    
    }
    func setupView(){
        helloWorldVM = HelloWorldViewModel()
        populateHelloWorldLabel()
        
    }
    func populateHelloWorldLabel() {
        helloWorldTitleLabel.text = helloWorldVM.helloWorldTitleLabel
    }
}

