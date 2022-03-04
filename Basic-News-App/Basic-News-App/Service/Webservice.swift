//
//  Webservice.swift
//  Basic-News-App
//
//  Created by Mutlu Çalkan on 4.03.2022.
//

import Foundation

class Webservice {
    
    func getNews(url: URL, completion: @escaping ([News]?) -> ()){
        URLSession.shared.dataTask(with: url) { urlData, urlResponse, urlError in
            if let error = urlError {
                print(error.localizedDescription)
                completion(nil)
            }
            else if let data = urlData {
                let newsRow = try? JSONDecoder().decode([News].self, from: data)
                
                if let newsRow = newsRow {
                    completion(newsRow)
                }
            }
        }.resume()
    }
}
