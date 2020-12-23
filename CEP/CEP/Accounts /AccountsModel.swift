//
//  AccountsModel.swift
//  CEP
//
//  Created by Rastislav Smolen on 22/12/2020.
//

import Foundation

public struct PlaceHolderAccountsData : Codable{
    public let kind, title, number: String
    public let balance: Double
    public let currency: String

    public init(kind: String, title:String, number:String, balance: Double, currency: String) {
        self.kind = kind
        self.title = title
        self.number = number
        self.balance = balance
        self.currency = currency
    }
}
