//
//  JsonTypicodeViewController.swift
//  CEP
//
//  Created by Rastislav Smolen on 28/12/2020.
//

import Foundation
import UIKit
class JsonTypicodeViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    var typicodeValues = [Myresponse]()
    let networking = Networking()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        networking.fetchData{ [weak self] (typicodeValues) in
                  self?.typicodeValues = typicodeValues
                    DispatchQueue.main.async {
                     self?.tableView.reloadData()
                    }
            
        }
        
    }
}
extension JsonTypicodeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typicodeValues.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.string.cellIdentifier.cellIndentifierTypicodeCell(), for: indexPath) as! TypicodeTableViewCell
        let typicodeValue = typicodeValues[indexPath.row]
        cell.userIDTableViewCell.text = "\(typicodeValue.userId)"
        cell.idTableViewCell.text = "\(typicodeValue.id)"
        cell.titleTableViewCell.text = typicodeValue.title
        cell.competionTableViewCell.text = "\(typicodeValue.completed)"
        return cell
    }
    
    
}
