//
//  SWAPIPersonResponse.swift
//  SWAPI
//
//  Created by Austin Jones on 2/15/21.
//

import Foundation

struct SWAPIPeopleResponse: Decodable {
    
    let people: [SWAPIPerson]
    
    enum CodingKeys: String, CodingKey {
        case people = "results"
    }
    
}
