//
//  ViewController.swift
//  CEP
//
//  Created by Rastislav Smolen on 11/12/2020.
//

import UIKit

class HelloWorldViewController: UIViewController {

  //  @IBOutlet private var helloWorldTitleLabel: UILabel!
    private var helloWorldVM : HelloWorldViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    
    }
   private func setupView(){

        helloWorldVM = HelloWorldViewModel()
        populateHelloWorldLabel()
       // helloWorldTitleLabel.layer.isHidden = true

    }
   private func populateHelloWorldLabel() {
      //  helloWorldTitleLabel.text = helloWorldVM.helloWorldTitleLabel
    }
}

