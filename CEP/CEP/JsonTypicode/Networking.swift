//
//  Networking.swift
//  CEP
//
//  Created by Rastislav Smolen on 23/12/2020.
//

import Foundation

class Newtworking {
    
    func fetchFilms(completionHandler: @escaping ([Myresponse]) -> Void) {
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos" )!

        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
          if let error = error {
            print("Error with fetching accounts: \(error)")
            return
          }
          
          guard let httpResponse = response as? HTTPURLResponse,
                (200...299).contains(httpResponse.statusCode) else {
            print("Error with the response, unexpected status code: \(response)")
            return
          }

          if let data = data,
            let dataSummary = try? JSONDecoder().decode([Myresponse].self, from: data) {
            completionHandler(dataSummary.self ?? [])
          }
        })
        task.resume()
      }
//    func getData(from url:String) {
//        let task = URLSession.shared.dataTask(with: URL(string: url)!,completionHandler: {data,response,error in
//            guard let data = data ,error == nil else {
//                print("something went wrong")
//                return
//            }
//            var result : [Response]?
//
//            do {
//                result =  try JSONDecoder().decode([Response].self, from: data)
//
//            }
//            catch {
//                print("failed to convert \(error)")
//            }
//
//            guard let json = result else {return}
//
//       })
//        task.resume()
//        }
    }

