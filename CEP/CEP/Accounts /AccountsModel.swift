//
//  AccountsModel.swift
//  CEP
//
//  Created by Rastislav Smolen on 22/12/2020.
//

import Foundation

struct PlaceHolderAccountsData : Decodable {
    
    let kind : String
    let title : String
    let number : String
    let balance : Double
    let currency : String
    
//    "kind": "current",
//    "title": "Current Account",
//    "number": "NL25 TRIO 0253 8443 20",
//    "balance": 1000,
//    "currency": "GBP"
    
}
