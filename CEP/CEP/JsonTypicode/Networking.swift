//
//  Networking.swift
//  CEP
//
//  Created by Rastislav Smolen on 23/12/2020.
//

import Foundation

class Newtworking {
    var controller = AccountsViewController()
    func getData(from url:String) {
        let task = URLSession.shared.dataTask(with: URL(string: url)!,completionHandler: {data,response,error in
            guard let data = data ,error == nil else {
                print("something went wrong")
                return
            }
            var result : [Response]?

            do {
                result =  try JSONDecoder().decode([Response].self, from: data)
                
            }
            catch {
                print("failed to convert \(error)")
            }
            
            guard let json = result else {return}
            
       })
        task.resume()
        }
    }

