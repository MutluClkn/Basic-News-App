//
//  News.swift
//  Basic-News-App
//
//  Created by Mutlu Çalkan on 4.03.2022.
//

import Foundation

struct News : Decodable {
    let title: String
    let story: String
    
    //Decodable: Get data
    //Encodable: Post data
    //Codable: Both Decodable and Encodable
}
