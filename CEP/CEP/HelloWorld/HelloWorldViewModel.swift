//
//  HelloWorldViewModel.swift
//  CEP
//
//  Created by Rastislav Smolen on 22/12/2020.
//

import Foundation
import Rswift

class HelloWorldViewModel {
    let helloWorldTitleLabel = R.string.helloWorld.helloWorld()
    var kind = String()
    private var jsonModel : Networking!
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
