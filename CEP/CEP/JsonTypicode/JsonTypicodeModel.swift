//
//  JsonTypicodeModel.swift
//  CEP
//
//  Created by Rastislav Smolen on 23/12/2020.
//

import Foundation

struct Response : Codable {
    var response : Myresponse?
}
struct Myresponse : Codable {
    public let userId, id: Int
    public let title: String
    public let completed: Bool

    public init(userId: Int, id: Int, title: String, completed: Bool) {
        self.userId = userId
        self.id = id
        self.title = title
        self.completed = completed
    }
}
