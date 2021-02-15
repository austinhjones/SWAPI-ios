//
//  SWAPIApp.swift
//  SWAPI
//
//  Created by Austin Jones on 2/15/21.
//

import SwiftUI

@main
struct SWAPIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SWAPIPeopleView()
        }
    }
}
