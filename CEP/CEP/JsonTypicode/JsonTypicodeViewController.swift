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
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
}
extension JsonTypicodeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typicodeValues.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.string.cellIdentifier.cellIndentifierTypicodeCell(), for: indexPath) as! TypicodeTableViewCell
        let typicodeValue = typicodeValues[indexPath.row]
        return cell
    }
    
    
}
