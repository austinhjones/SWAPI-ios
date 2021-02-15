//
//  SWAPIPerson.swift
//  SWAPI
//
//  Created by Austin Jones on 2/15/21.
//

import Foundation

struct SWAPIPerson: Decodable, Identifiable {
    
    let id = UUID()
    let birthyear: String
    let films: [String] // [URL]
    let homeworld: String // URL
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case birthyear = "birth_year"
        case films
        case homeworld
        case name
    }
    
}

extension SWAPIPerson {
    
    func print() -> String {
        "\(name) (b. \(birthyear)) on \(homeworld)."
    }
    
}
