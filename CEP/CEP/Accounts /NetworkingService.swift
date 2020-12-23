//
//  NetworkingService.swift
//  CEP
//
//  Created by Rastislav Smolen on 22/12/2020.
//

//import Foundation
//class Networking {
//    var arrSt = [PlaceHolderAccountsData]()
//
//    static func readLocalFile(fileName: String) -> Data? {
//            if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
//                do {
//                    let fileUrl = URL(fileURLWithPath: path)
//                    let data = try Data(contentsOf: fileUrl, options: .mappedIfSafe)
//                    return data
//            } catch {
//    }
//}
//    return nil
//    }
//
//     func parseJson(jsonData: Data)   {
//        do {
//            
//            let decodeData = try JSONDecoder().decode(PlaceHolderAccountsData.self, from: jsonData)
//            self.arrSt.append( decodeData)
//        } catch {
//            print(error.localizedDescription)
//        }
//    }
//}
