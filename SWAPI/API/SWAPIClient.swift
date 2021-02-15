//
//  SWAPIClient.swift
//  SWAPI
//
//  Created by Austin Jones on 2/15/21.
//

import Foundation
import Combine

struct SWAPIClient {
    
    private static let apiClient = APIClient()
    private static let baseURL = URL(string: "https://swapi.dev/api/")!
    
    private enum APIPath: String {
        case people = "people/"
    }
    
    private static func request<T: Decodable>(url: URL) -> AnyPublisher<T, Error> {
        guard let components = URLComponents(url: url, resolvingAgainstBaseURL: true) else {
            fatalError("could not make URL in SWAPIClient")
        }
        
        let request = URLRequest(url: components.url!)
        
        return apiClient.run(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
    
    static func getPeople() -> AnyPublisher<SWAPIPeopleResponse, Error> {
        request(url: baseURL.appendingPathComponent(APIPath.people.rawValue))
    }
 
    static func getPerson(id: Int) -> AnyPublisher<SWAPIPerson, Error> {
        request(url: baseURL.appendingPathComponent("\(APIPath.people.rawValue)\(id)/"))
    }
    
}
