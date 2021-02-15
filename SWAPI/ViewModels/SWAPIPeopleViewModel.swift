//
//  SWAPIPeopleViewModel.swift
//  SWAPI
//
//  Created by Austin Jones on 2/15/21.
//

import Foundation
import Combine

class SWAPIPeopleViewModel: ObservableObject {
    
    @Published var people: [SWAPIPerson] = []
    var cancellationToken: AnyCancellable?
    
    func getPeople() {
        cancellationToken = SWAPIClient.getPeople()
            .mapError({ (error) -> Error in
                print(error)
                return error
            })
            .sink(receiveCompletion: { _ in },
                  receiveValue: {
                    self.people = $0.people
            })
    }
    
}
