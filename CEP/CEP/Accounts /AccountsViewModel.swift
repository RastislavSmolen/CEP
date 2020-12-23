//
//  AccountsViewModel.swift
//  CEP
//
//  Created by Rastislav Smolen on 23/12/2020.
//

import Foundation

class AccountsViewModel {

    private var jsonModel : Networking!

    var kind = String()
    var title = String()
    var number = String()
    var balance = Double()
    var currency = String()

    func grabDataFromJsonModel() {
        jsonModel = Networking()
        if let localData = Networking.readLocalFile(fileName: "Accounts") {
            guard let parsedData = jsonModel.parseJson(jsonData: localData) else {return}
            for data in parsedData {
                kind = data.kind
                print(kind)
            }
        }
    }
}
