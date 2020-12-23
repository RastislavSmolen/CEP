//
//  AccountsViewController.swift
//  CEP
//
//  Created by Rastislav Smolen on 23/12/2020.
//

import Foundation
import UIKit

class AccountsViewController : UIViewController,UITableViewDelegate {
 
    let cell = AccountTableViewCell()
    let accountsVM = AccountsViewModel()
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
        tableView.delegate = self
        tableView.dataSource = self  
    
    }
    private func setUpView() {
        
    }
   
}
extension AccountsViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.string.cellIdentifier.cellIdentifier(), for: indexPath) as! AccountTableViewCell
        cell.balanceAccountLabel.text = "10000"

        return cell
    }
    
    
}
