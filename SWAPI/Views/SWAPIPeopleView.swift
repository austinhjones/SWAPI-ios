//
//  SWAPIPeopleView.swift
//  SWAPI
//
//  Created by Austin Jones on 2/15/21.
//

import SwiftUI

struct SWAPIPeopleView: View {
    
    @ObservedObject var swapiPeopleViewModel = SWAPIPeopleViewModel()
    
    var body: some View {
        List(swapiPeopleViewModel.people) { person in
            VStack(alignment: .leading) {
                Text(person.name)
                    .font(.headline)
                Text("born: \(person.birthyear)")
                    .font(.subheadline)
            }
        }
        .onAppear {
            swapiPeopleViewModel.getPeople()
        }
    }
    
}

struct SWAPIPeopleView_Previews: PreviewProvider {
    static var previews: some View {
        SWAPIPeopleView()
    }
}
