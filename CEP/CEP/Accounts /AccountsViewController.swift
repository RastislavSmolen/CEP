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
    var accounts = [PlaceHolderAccountsData]()
    var test = [Response]()
    let net = Newtworking()
    
    @IBOutlet var tableView: UITableView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        net.getData(from: "https://jsonplaceholder.typicode.com/todos")
    print(test.count)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
        tableView.delegate = self
        tableView.dataSource = self
    
    }
    private func setUpView() {
       grabDataFromJsonModel()
       
    }
    func grabDataFromJsonModel() {
        if let localData = AccountsViewController.readLocalFile(fileName: "Accounts") {
            parseJson(jsonData: localData)
            
        }
    }
    static func readLocalFile(fileName: String) -> Data? {
            if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
                do {
                    let fileUrl = URL(fileURLWithPath: path)
                    let data = try Data(contentsOf: fileUrl, options: .mappedIfSafe)
                    return data
            } catch {
    }
}
    return nil
    }

     func parseJson(jsonData: Data)   {
        do {
            
            let data = try JSONDecoder().decode([PlaceHolderAccountsData].self, from: jsonData)
            self.accounts.append(contentsOf: data)
            
        } catch {
            print(error.localizedDescription)
        }
    }
   
}
extension AccountsViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return test.count//accounts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.string.cellIdentifier.cellIdentifier(), for: indexPath) as! AccountTableViewCell
        let acc =  accounts[indexPath.row]
        cell.kindAccountLabel.text = "Type of account : \(String(describing: acc.kind))"
        cell.titleAccountLabel.text = "Version of account : \(String(describing: acc.title))"
        cell.numberAccountLabel.text = "Account number: \(String(describing: acc.number))"
        cell.balanceAccountLabel.text = "Current ballance : \(String(describing: acc.balance))"
        cell.currencyAccountLabel.text = "Current currency : \(String(describing: acc.currency))"

        return cell
    }
    
    
}
