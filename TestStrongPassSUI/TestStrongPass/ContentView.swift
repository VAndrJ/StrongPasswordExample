//
//  ContentView.swift
//  TestStrongPass
//
//  Created by VAndrJ on 04.03.2024.
//

import SwiftUI

enum Destination {
    case registration
    case dummy
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Next", value: Destination.registration)
                .navigationDestination(for: Destination.self) { destination in
                    switch destination {
                    case .registration:
                        RegistrationScreenView()
                    case .dummy:
                        Text("Dummy")
                    }
                }
        }
    }
}

struct RegistrationScreenView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .textContentType(.username)
            TextField("Password", text: $password)
                .textContentType(.newPassword)
            NavigationLink("Next", value: Destination.dummy)
        }
    }
}
